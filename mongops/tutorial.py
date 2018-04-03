from mongoengine import connect
from mongoengine import *

connect('tut1', host='localhost', port=27017)
# username='', password=''

class User(Document):
    email = StringField(required=True)
    first_name = StringField(max_length=50)
    last_name = StringField(max_length=50)

class Comment(EmbeddedDocument):
    content = StringField()
    name = StringField(max_length=120)

class Post(Document):
    title = StringField(max_length=120, required=True)
    author = ReferenceField(User, reverse_delete_rule=CASCADE)
    tags = ListField(StringField(max_length=30))
    comments = ListField(EmbeddedDocumentField(Comment))

    meta = {'allow_inheritance': True}

class TextPost(Post):
    content = StringField()

class ImagePost(Post):
    image_path = StringField()

class LinkPost(Post):
    link_url = StringField()


def add_datas():
    ross = User(email='ross@example.com', first_name='Ross', last_name='Lawley').save()
    john = User(email='john@example.com')
    john.first_name = 'John'
    john.last_name = 'Adam'
    john.save()

    post1 = TextPost(title='Fun with MongoEngine', author=john)
    post1.content = 'Took a look at MongoEngine today, looks pretty cool.'
    post1.tags = ['mongodb', 'mongoengine']
    post1.save()

    post2 = LinkPost(title='MongoEngine Documentation', author=ross)
    post2.link_url = 'http://docs.mongoengine.com/'
    post2.tags = ['mongoengine']
    post2.save()

def access_posts_by_tag():
    print('----------access_posts_by_tag----------')
    for post in Post.objects(tags='mongodb'):
        print('title:', post.title)

    cunt = Post.objects(tags='mongoengine').count()
    print('Found {} posts with tag "mongoengine"'.format(cunt))

    frst = Post.objects(tags='mongoengine').first()
    print('First:', frst.link_url)

def access_posts():
    print('----------access_posts----------')
    for post in Post.objects:
        print('title:', post.title)
        if isinstance(post, TextPost):
            print('content:', post.content)
        if isinstance(post, LinkPost):
            print('Link:{}'.format(post.link_url))
        print('-  '*10)

def main():
    #add_datas()
    access_posts()
    access_posts_by_tag()

if __name__ == '__main__':
    main()
