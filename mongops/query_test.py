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

class UserInfo(Document):
    user_id = StringField()
    name = StringField(max_length=50, required=True)
    sex = IntField(default=0)
    cunt = IntField(default=0)
    modified = DateTimeField(default=datetime.datetime.now) # utcnow
    
    meta = {'db_alias':'user-db'}

    def __str__(self):
        return "{}[{}]".format(self.name, self.modified)


def querying():
    print('----------querying----------')
    for user in User.objects:
        print(user.pk, user.name, user.modified)

    print(User.objects(name='John'))
    print(':::', User.objects(name='Johni').first())

    ab=AuthorBooks.objects(author__name='John')
#    print(ab)
    u_tim = User.objects(name='Tim')
    pg=Page.objects(author__in=u_tim)
    print(pg)

def add_datas():
    ross = UserInfo(name='Ross', cunt=1).save()
    john = UserInfo(name='John').save()


def main():
    add_datas()
    #querying()


if __name__ == '__main__':
    main()
