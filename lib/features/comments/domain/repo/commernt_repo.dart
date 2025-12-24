abstract class CommentRepo {
  Future<void> addComment({required String placeId, required String comment});
}
