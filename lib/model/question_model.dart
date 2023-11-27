// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class QuestionModel {
  String question;
  String author;
  QuestionModel({
    required this.question,
    required this.author,
  });

  QuestionModel copyWith({
    String? question,
    String? author,
  }) {
    return QuestionModel(
      question: question ?? this.question,
      author: author ?? this.author,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'question': question,
      'author': author,
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      question: map['question'] as String,
      author: map['author'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'QuestionModel(question: $question, author: $author)';

  @override
  bool operator ==(covariant QuestionModel other) {
    if (identical(this, other)) return true;

    return other.question == question && other.author == author;
  }

  @override
  int get hashCode => question.hashCode ^ author.hashCode;
}
