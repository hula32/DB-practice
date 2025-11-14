from rest_framework import serializers
from .models import Article, Comment


class ArticleSerializer(serializers.ModelSerializer):

    class CommentDetailSerializer(serializers.ModelSerializer):
        class Meta:
            model = Comment
            fields = ('id', 'content',)

    commets = CommentDetailSerializer(many=True, read_only=True)

    num_of_commets = serializers.SerializerMethodField()
    

    class Meta:
        model = Article
        fields = '__all__'
    
    def get_num_of_comments(self, obj):
        return obj.num_of_comments


class ArticleListSerializer(serializers.ModelSerializer):

    class Meta:
        model = Article
        fields = ('id', 'title', 'content',)

class CommentSerializer(serializers.ModelSerializer):

    class ArticleTitleSerializer(serializers.ModelSerializer):
        class Meta:
            model = Article
            fields = ('id', 'title',)

    article = ArticleListSerializer(read_only=True)

    class Meta:
        model = Comment
        fields = '__all__'
        # read_only_fields = ('article',)