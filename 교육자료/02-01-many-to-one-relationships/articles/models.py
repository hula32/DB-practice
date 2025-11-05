from django.db import models


# Create your models here.
class Article(models.Model):
    title = models.CharField(max_length=10)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

# 댓글 클래스를 위한 설계도 작성 -> COMMENT의 CONTENT와 외래키
class Comment(models.Model):
    article = models.ForeignKey(Article, on_delete=models.CASCADE) # 단수형, 댓글에 입장에서 1이기 때문에 -> 복수형으로 하면 다대다할때 곤란
    content = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
