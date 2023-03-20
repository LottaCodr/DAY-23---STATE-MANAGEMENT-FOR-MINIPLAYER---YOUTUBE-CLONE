class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  User(
      {required this.username,
      required this.profileImageUrl,
      required this.subscribers});
}

User currentUser = User(
    username: 'Lota Nna',
    profileImageUrl: 'lib/assets/images/lota.jpg',
    subscribers: '200k');

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video(
      {required this.id,
      required this.author,
      required this.title,
      required this.thumbnailUrl,
      required this.duration,
      required this.timestamp,
      required this.viewCount,
      required this.likes,
      required this.dislikes});
}

final List<Video> videos = [
  Video(
      id: '0',
      author: currentUser,
      title: 'Cloning YouTube with Flutter',
      thumbnailUrl: 'lib/assets/images/elonchat.png',
      duration: '8:20',
      timestamp: DateTime(2021, 3, 18),
      viewCount: '19K',
      likes: '871',
      dislikes: '2'),
  Video(
      id: '1',
      author: currentUser,
      title: 'The Dribble Clone using Flutter only',
      thumbnailUrl: 'lib/assets/images/fb1.png',
      duration: '12:20',
      timestamp: DateTime(2021, 3, 20),
      viewCount: '199K',
      likes: '8771',
      dislikes: '8'),
  Video(
      id: '2',
      author: currentUser,
      title: 'MedLab UI Design using Flutter',
      thumbnailUrl: 'lib/assets/images/ae.png',
      duration: '09:20',
      timestamp: DateTime(2021, 3, 23),
      viewCount: '239K',
      likes: '971',
      dislikes: '2'),

];
final List<Video> suggestedVideos = [
  Video(
      id: 'a0',
      author: currentUser,
      title: 'Learn Flutter from Lota',
      thumbnailUrl: 'lib/assets/images/travel_app.png',
      duration: '8:20',
      timestamp: DateTime(2021, 3, 18),
      viewCount: '19K',
      likes: '871',
      dislikes: '2'),
  Video(
      id: 'a1',
      author: currentUser,
      title: 'The real reason people fail',
      thumbnailUrl: 'lib/assets/images/YooHoo.png',
      duration: '12:20',
      timestamp: DateTime(2021, 3, 20),
      viewCount: '199K',
      likes: '8771',
      dislikes: '8'),
  Video(
      id: 'a2',
      author: currentUser,
      title: 'Perks of every software developer',
      thumbnailUrl: 'lib/assets/images/mond.png',
      duration: '09:20',
      timestamp: DateTime(2021, 3, 23),
      viewCount: '239K',
      likes: '971',
      dislikes: '2'),

];
