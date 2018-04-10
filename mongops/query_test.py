import mongoengine
from mongoengine import connect
from mongoengine import *
import datetime

# connect('user_db', host='localhost', port=27017)
# username='', password=''
mongo_conf = {
    'user-db':{
        'name':'user',
        'host':'localhost',
        'port':27017
    },
    'book-db':{
        'name':'book',
        'host':'localhost',
        'port':27017
    }
}

for alias, attrs in mongo_conf.items():
    mongoengine.register_connection(alias, **attrs)

class ExInfo(EmbeddedDocument):
    age = IntField(default=0)
    weight = IntField(default=0)
    nickname = StringField()

class UserInfo(Document):
    name = StringField(max_length=50, required=True)
    sex = IntField(default=0)
    cunt = IntField(default=1)
    modified = DateTimeField(default=datetime.datetime.now) # utcnow
    ex = EmbeddedDocumentField(ExInfo, default=ExInfo())
    
    meta = {'db_alias':'user-db'}

    def __str__(self):
        return "{},{},ex:{}".format(self.name, self.sex, self.ex.nickname)

class Comment(EmbeddedDocument):
    content = StringField()

class Page(DynamicDocument):
    title = StringField()
    tag = ListField(StringField())
    comments = ListField(EmbeddedDocumentField(Comment))
    content = StringField()
    author = ReferenceField(UserInfo)
    date_modified = DateTimeField(default=datetime.datetime.now)

    meta = {'db_alias':'user-db'}
    def __str__(self):
        return "{},{},{},{}".format(self.pk, self.title, self.tag, ','.join([x.content for x in self.comments]))

def add_pages():
    c1 = Comment(content='comment_cont1')
    c2 = Comment(content='comment_cont2222')
    c3 = Comment(content='comment_cont3')
    c4 = Comment(content='comment_cont4')
    c5 = Comment(content='comment_cont5')
    c6 = Comment(content='comment_cont6')
    c7 = Comment(content='comment_cont7')

    p = Page(title='tit1')
    p.tag = ['tag1', 'tag2', 'tag3']
    p.content = 'cont1'
    p.comments = [c1,c2,c3]
    p.save()
    p2 = Page(title='titl2', content='cont2')
    p2.tag = ['tag21', 't22', 't23', 't24']
    p2.comments = [c4, c5, c6, c7]
    p2.save()

def prt(*args):
    print('- '*30)
    print(args)

def querying():
    print('----------querying----------')
    print(UserInfo.objects(name='John'))
    print(':::', UserInfo.objects(name='Johni').first())
    print(UserInfo.objects(ex__nickname='Jetter'))
    print('---------Page Query-------')
    #prt(Page.objects())
    prt(Page.objects(tag='tag21'))
    prt(Page.objects(tag__0='tag1'))
    prt(Page.objects(tag='tag1').fields(slice__comments=[1,3]))
    prt(Page.objects(tag='tag1').fields(slice__tag=[2,4]))


def add_datas():
    ross = UserInfo(name='Ross')
    #print(ross.cunt)
    ross.cunt = 1
    ross.save()
    UserInfo(name='John').save()
    UserInfo(name='Jack').save()

def add_datas2():
    jet = UserInfo(name='Jet')
    exi = ExInfo(nickname='Jetter')
    jet.ex = exi
    jet.save()

def main():
    #add_datas()
    #add_datas2()
    #add_pages()
    querying()


if __name__ == '__main__':
    main()
