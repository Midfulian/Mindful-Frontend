class MoodData {
  MoodData(this.day, this.mood);

  final String day;
  final String mood;

  static int moodToNumber(String mood) {
    switch (mood) {
      case 'Happy':
        return 1;
      case 'Good':
        return 2;
      case 'Meh':
        return 3;
      case 'Bad':
        return 4;
      case 'Awful':
        return 5;
      default:
        return 0;
    }
  }
}