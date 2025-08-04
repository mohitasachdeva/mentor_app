class ApiEndpoints {
  //Base URLs
  static const String baseUrl = 'https://bl-practice-attendance-stg-187791816934.asia-south1.run.app/api/v1';
  static const String learnerBase = 'https://bl-learnerpractice-app-stg-187791816934.asia-south1.run.app/learner';




  //  Auth
  static String login = '$baseUrl/learners/login';

  // Attendance
  static String attendance = '$baseUrl/learnerDailyAttendance';
  static String getAttendanceUrl(String id) => '$attendance/$id';
  static String learnerDailyAttendanceUrl(String learnerCode) =>
      '$baseUrl/learnerDailyAttendance/$learnerCode';
  static String checkinUrl = '$baseUrl/attendance/checkin';
  static String todaysAttendanceCodeUrl(String attendanceCode) => '$baseUrl/learners/attendance/$attendanceCode';
  

  // Coding Practice
  static String allCodingPractice = '$baseUrl/learnerlabpractices';

  // Today's Activity Check-in
  static String todaysActivityCheckin = '$baseUrl/learners/attendance';
  static String getTodaysActivityCheckin(String attendanceCode) =>
      '$todaysActivityCheckin/$attendanceCode';
  
  // TrackScore
  static String learnerTrackScore = '$baseUrl/learnerTrackScore';

  // Practices
  static String learnerPracticeDetail(String practiceCode) => '$allCodingPractice/$practiceCode';
  static String submitPractice(int learnerDailyPracticeID, int dailyPracticeID) =>
      '$allCodingPractice/$learnerDailyPracticeID/dailypractice/$dailyPracticeID';
  static const String fetchPracticeNote = '$baseUrl/learnerdailynotes';

  //Learner QR Code
  static String learnerQrCodeUrl(String learnerCode) => '$baseUrl/learners/track_qr_code/$learnerCode';
}
