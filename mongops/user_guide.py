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

class User(Document):
    name = StringField(max_length=50, required=True)
    modified = DateTimeField(default=datetime.datetime.now) # utcnow
    
    meta = {'db_alias':'user-db'}

    def __str__(self):
        return "{}[{}]".format(self.name, self.modified)

class Page(Document):
    title = StringField()
    author = ReferenceField(User)

    meta = {'db_alias':'user-db'}

class Book(Document):
    name = StringField()

    meta = {'db_alias':'book-db'}

class AuthorBooks(Document):
    author = ReferenceField(User)
    book = ReferenceField(Book)

    meta = {'db_alias': 'book-db'}

def querying():
    print('----------querying----------')
    for user in User.objects:
        print(user.name, user.modified)

    print(User.objects(name='John'))

    ab=AuthorBooks.objects(author__name='John')
#    print(ab)
    u_tim = User.objects(name='Tim')
    pg=Page.objects(author__in=u_tim)
    print(pg)

def add_datas():
    ross = User(name='Ross').save()
    john = User(name='John').save()

    b1 = Book(name='About Mongoengine').save()
    b2 = Book(name='Python Cookbook').save()
    
    AuthorBooks(author=ross, book=b1).save()
    AuthorBooks(author=john, book=b2).save()

def add_page_datas():
    tim = User(name='Tim').save()
    page = Page(title='Test Page')
    page.author = tim
    page.save()

def main():
    #add_datas()
    #add_page_datas()
    querying()


if __name__ == '__main__':
    main()
