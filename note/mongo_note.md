> mongodb, mongoengine

## install mongo and mongoengine
> http://docs.mongoengine.org/tutorial.html
```shell
● install mongo
sudo apt-get install mongodb
## sudo apt install mongodb
## sudo apt install mongodb-clients
mongo -version
service mongodb start
service mongodb stop
pgrep mongo -l # 查看是否启动, 默认MongoDB是随Ubuntu启动的。
● install mongoengin
pip install mongoengine
```

## mongo operate
```shell
● uninstall mongo
sudo apt-get --purge remove mongodb mongodb-clients mongodb-server
● access and operate mongo :无需预先定义collection，第一次插入数据时，collection会自动创建。
mongo
show dbs
show collections
show users
use dbname
db.help()
db.collectioname.help()
●● create db
use new_db_name
db.createCollection('collectioname')

db.col_name.insert({_id:1, sname: 'zhangsan', sage: 20}) #_id可选
db.col_name.save({_id:1, sname: 'zhangsan', sage: 22}) #_id可选
## 两种方式插入数据时，_id均可不写，会自动生成，不同之处在于：
## 1. 手动插入_id时，如已经存在，insert不做操作，save做更新操作；
## 2. 如不加_id，两者作用相同都是插入数据。
db.col_name.find({})
## 添加的数据结构是松散的，bson均可，列属性均不固定，先定义数据再插入，可一次性插入多条.
lst = [{sname:'dingyi', sage:20},{sname:'lisi', sage:30}]
db.col_name.insert(lst)
●● find
db.col_name.find()
db.col_name.find({sname: 'lisi'})
db.col_name.find({},{sname:1, sage:1}) #查询指定列数据(select sname,sage from col_name)
## 默认也返回_id，写成{sname: 1, sage: 1, _id:0}，就不会返回_id字段了
db.col_name.find({sname: 'zhangsan', sage: 22}) # and条件查询。
db.col_name.find({$or: [{sage: 22}, {sage: 25}]}) # or条件查询。
●● update
### db.col_name.update(criteria, objNew, upsert, multi)
## upsert 不存在时是否插入 false
## multi 更新一条还是多条 false
db.col_name.update({sname: 'lisi'}, {$set: {sage: 35}}, false, true)
## (update col_name set sage =30 where sname = 'lisi';)
●● remove(delete)
db.col_name.remove({sname: 'chenliu'})
```

## Document:
```
Document
DynamicDocument
EmbeddedDocument
```

## Fields:
```
BinaryField
BooleanField
ComplexDateTimeField
DateTimeField
DecimalField
DictField
DynamicField
EmailField
EmbeddedDocumentField
EmbeddedDocumentListField
FileField
FloatField
GenericEmbeddedDocumentField
GenericReferenceField
GeoPointField
ImageField
IntField
ListField
MapField
ObjectIdField
ReferenceField
SequenceField
SortedListField
StringField
URLField
UUIDField
PointField
LineStringField
PolygonField
MultiPointField
MultiLineStringField
MultiPolygonField
```

## Field arguments
```
db_field
required
default
unique
unique_with
primary_key
choices
**kwargs
```

## One to Many with ListFields
```python
authors = ListField(ReferenceField(User))
```

## class.meta 设置
```python
meta = {'collection': 'cmsPage'}
meta = {'max_documents': 1000, 'max_size': 2000000}
meta = {
    'indexes': [
        'title',
        '$title',  # text index
        '#title',  # hashed index
        ('title', '-rating'),
        ('category', '_cls'),
        {
            'fields': ['created'],
            'expireAfterSeconds': 3600
        }
    ]
}
meta = {
    'index_options': {},
    'index_background': True,
    'index_drop_dups': True,
    'index_cls': False
}
meta = {
    'indexes': [[("location", "2dsphere"), ("datetime", 1)]]
}
meta = {
    'indexes': [
        '*location.point',
    ],
}
meta = {
    'indexes': [
        {'fields': ['created'], 'expireAfterSeconds': 3600}
    ]
}
meta = {
    'ordering': ['-published_date']
}

meta = {
    'shard_key': ('machine', 'timestamp',)
}
meta = {'allow_inheritance': True}
meta = {
    'collection': 'cmsPage'
}
meta = {
    'abstract': True,
}
```

## index 索引
```
● 索引类型
_id(主键索引)
Single Filed(单字段索引)
Compound(组合索引，字段顺序很重要，遵循“最左前缀”原则)
Multikey(复合键索引)
Geospatial(地理空间索引)
Text(文本索引)
Hash(哈希索引，主要使用场景为“hash sharding”)

● 索引属性（property）
唯一索引（Unique）
稀疏索引（Sparse）
TTL索引 TTL(Time To Live) 生存时间

● 索引的设计目的就是提高query性能
覆盖索引(Covered query)

● 索引策略
1、按需创建索引
索引可以提高query的查询效率，当然也会增加write时带来的开支，增加内存、磁盘的使用。
    1）如果所有的（大多数）查询都使用了同一个字段，那么可以给此字段建立单一字段索引。
    2）如果有些query只使用了一个key，而其他的query则是此key与其他key的组合，那么创建一个组合索引则比创建一个或者多个单一索引更加高效，索引的“最左前缀”不仅可以支持单一key的查询，而且还能兼顾它们的组合查询，且还在一定程度上了减少了因多个索引带来的性能开销。比如索引{x: 1, y : 1}开支持 {x : 1} 和 {x : 1, y : 1}两个key的查询。

2、db.collection.totalIndexSize()来查看collection中所有索引的大小。
mongodb会将最近使用的indexes或者“right-most”保存在内存中，这可以更加高效的使用索引。

3、选择性（Selectivity）是判定一个索引筛选数据的能力，如status只有2个合法值“new”、“processed”，在其上建立索引的选择性就比较低，即使索引生效，也需要遍历一半数据才能得到最终结果，事实上对status建立索引没有必要。

4、对于sort操作，如果能利用索引的排序直接获去结果，这是性能最好的
对于多字段的组合索引中的sort操作，排序字段必须和它们在index中声明的顺序保持一致，比如索引{a : 1, b : 1}，将不支持sort( { b : 1, a : 1})，上述索引支持{a : 1, b : 1} 和 { a : -1, b : -1}，但无法支持{a : 1, b : -1} 和 { a : -1, b : 1}。
如果参与排序的字段（和顺序）和索引字段一样或者是索引的前缀字段，且查询条件中也包含索引的前缀字段，那么mongodb则可以使用索引进行排序，这是一种比较高效的做法。比如索引{ a : 1, b : 1, c : 1}，如下查询均可以利用索引排序：
db.data.find().sort( { a: 1 } )
db.data.find().sort( { a: -1 } )
db.data.find().sort( { a: 1, b: 1 } )
db.data.find().sort( { a: -1, b: -1 } )
db.data.find().sort( { a: 1, b: 1, c: 1 } )
db.data.find( { a: { $gt: 4 } } ).sort( { a: 1, b: 1 } )
如果参与排序的字段不是索引的前缀字段，具体是否能够利用索引排序，就要求查询条件的字段需要为索引的最左前缀字段，同时查询条件的字段和sort字段的也应该构成组合索引的左前缀，比如索引 { a : 1, b : 1, c: 1} ,那么此索引将支持如下几种排序方式
db.data.find( { a: 5 } ).sort( { b: 1, c: 1 } )
db.data.find( { b: 3, a: 4 } ).sort( { c: 1 } )
db.data.find( { a: 5, b: { $lt: 3} } ).sort( { b: 1 } )

```


