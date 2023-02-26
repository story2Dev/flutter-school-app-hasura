class ScoreQuery {
  static const String scores = """
      query scores{
          scores{
              id
              score
              subject{
                subject_name
              }
          }
      }
      """;
}
