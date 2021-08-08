class HomeScreenModel {
  List<Courses> _courses;
  int _status;

  HomeScreenModel({List<Courses> courses, int status}) {
    this._courses = courses;
    this._status = status ;
  }

  List<Courses> get courses => _courses;
  set courses(List<Courses> courses) => _courses = courses;
  int get status => _status;
  set status(int status) => _status = status;

  HomeScreenModel.fromJson(Map<String, dynamic> json) {
    if (json['courses'] != null) {
      _courses = new List<Courses>();
      json['courses'].forEach((v) {
        _courses.add(new Courses.fromJson(v));
      });
    }
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._courses != null) {
      data['courses'] = this._courses.map((v) => v.toJson()).toList();
    }
    data['status'] = this._status;
    return data;
  }
}

class Courses {
  String _id;
  String _slug;
  String _name;
  String _courseImage;
  double _coursePrice;
  String _startdate;
  String _enddate;
  String _courseCatagory;
  List<CourseDesignedBy> _courseDesignedBy;
  Hover _hover;
  UserActivity _userActivity;

  Courses(
      {String id,
      String slug,
      String name,
      String courseImage,
     double coursePrice,
      String startdate,
      String enddate,
      String courseCatagory,
      List<CourseDesignedBy> courseDesignedBy,
      Hover hover,
      UserActivity userActivity}) {
    this._id = id;
    this._slug = slug;
    this._name = name;
    this._courseImage = courseImage;
    this._coursePrice = coursePrice ;
    this._startdate = startdate;
    this._enddate = enddate;
    this._courseCatagory = courseCatagory;
    this._courseDesignedBy = courseDesignedBy;
    this._hover = hover;
    this._userActivity = userActivity;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get slug => _slug;
  set slug(String slug) => _slug = slug;
  String get name => _name;
  set name(String name) => _name = name;
  String get courseImage => _courseImage;
  set courseImage(String courseImage) => _courseImage = courseImage;
  double get coursePrice => _coursePrice;
  set coursePrice(double coursePrice) => _coursePrice = coursePrice;
  String get startdate => _startdate;
  set startdate(String startdate) => _startdate = startdate;
  String get enddate => _enddate;
  set enddate(String enddate) => _enddate = enddate;
  String get courseCatagory => _courseCatagory;
  set courseCatagory(String courseCatagory) => _courseCatagory = courseCatagory;
  List<CourseDesignedBy> get courseDesignedBy => _courseDesignedBy;
  set courseDesignedBy(List<CourseDesignedBy> courseDesignedBy) =>
      _courseDesignedBy = courseDesignedBy;
  Hover get hover => _hover;
  set hover(Hover hover) => _hover = hover;
  UserActivity get userActivity => _userActivity;
  set userActivity(UserActivity userActivity) => _userActivity = userActivity;

  Courses.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _slug = json['slug'];
    _name = json['name'];
    _courseImage = json['CourseImage'];
    _coursePrice = json['course_price'];
    _startdate = json['startdate'];
    _enddate = json['enddate'];
    _courseCatagory = json['CourseCatagory'];
    if (json['course_designed_by'] != null) {
      _courseDesignedBy = new List<CourseDesignedBy>();
      json['course_designed_by'].forEach((v) {
        _courseDesignedBy.add(new CourseDesignedBy.fromJson(v));
      });
    }
    _hover = json['hover'] != null ? new Hover.fromJson(json['hover']) : null;
    _userActivity = json['user_activity'] != null
        ? new UserActivity.fromJson(json['user_activity'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['slug'] = this._slug;
    data['name'] = this._name;
    data['CourseImage'] = this._courseImage;
    data['course_price'] = this._coursePrice;
    data['startdate'] = this._startdate;
    data['enddate'] = this._enddate;
    data['CourseCatagory'] = this._courseCatagory;
    if (this._courseDesignedBy != null) {
      data['course_designed_by'] =
          this._courseDesignedBy.map((v) => v.toJson()).toList();
    }
    if (this._hover != null) {
      data['hover'] = this._hover.toJson();
    }
    if (this._userActivity != null) {
      data['user_activity'] = this._userActivity.toJson();
    }
    return data;
  }
}

class CourseDesignedBy {
  String _id;
  String _username;
  String _imageUri;
  List<String> _info;
  String _specialization;
  String _bio;
  int _experience;

  CourseDesignedBy(
      {String id,
      String username,
      String imageUri,
      List<String> info,
      String specialization,
      String bio,
      int experience}) {
    this._id = id;
    this._username = username;
    this._imageUri = imageUri;
    this._info = info;
    this._specialization = specialization;
    this._bio = bio;
    this._experience = experience;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get username => _username;
  set username(String username) => _username = username;
  String get imageUri => _imageUri;
  set imageUri(String imageUri) => _imageUri = imageUri;
  List<String> get info => _info;
  set info(List<String> info) => _info = info;
  String get specialization => _specialization;
  set specialization(String specialization) => _specialization = specialization;
  String get bio => _bio;
  set bio(String bio) => _bio = bio;
  int get experience => _experience;
  set experience(int experience) => _experience = experience;

  CourseDesignedBy.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _username = json['username'];
    _imageUri = json['image_uri'];
    _info = json['info'].cast<String>();
    _specialization = json['specialization'];
    _bio = json['bio'];
    _experience = json['experience'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['username'] = this._username;
    data['image_uri'] = this._imageUri;
    data['info'] = this._info;
    data['specialization'] = this._specialization;
    data['bio'] = this._bio;
    data['experience'] = this._experience;
    return data;
  }
}

class Hover {
  String _id;
  String _slug;
  String _name;
  String _startdate;
  String _enddate;
  int _days;
  List<String> _courseLanguage;
  String _level;
  String _courseDescription;
  Skills _skills;
  String _courseType;
  bool _userOrder;

  Hover(
      {String id,
      String slug,
      String name,
      String startdate,
      String enddate,
      int days,
      List<String> courseLanguage,
      String level,
      String courseDescription,
      Skills skills,
      String courseType,
      bool userOrder}) {
    this._id = id;
    this._slug = slug;
    this._name = name;
    this._startdate = startdate;
    this._enddate = enddate;
    this._days = days;
    this._courseLanguage = courseLanguage;
    this._level = level;
    this._courseDescription = courseDescription;
    this._skills = skills;
    this._courseType = courseType;
    this._userOrder = userOrder;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get slug => _slug;
  set slug(String slug) => _slug = slug;
  String get name => _name;
  set name(String name) => _name = name;
  String get startdate => _startdate;
  set startdate(String startdate) => _startdate = startdate;
  String get enddate => _enddate;
  set enddate(String enddate) => _enddate = enddate;
  int get days => _days;
  set days(int days) => _days = days;
  List<String> get courseLanguage => _courseLanguage;
  set courseLanguage(List<String> courseLanguage) =>
      _courseLanguage = courseLanguage;
  String get level => _level;
  set level(String level) => _level = level;
  String get courseDescription => _courseDescription;
  set courseDescription(String courseDescription) =>
      _courseDescription = courseDescription;
  Skills get skills => _skills;
  set skills(Skills skills) => _skills = skills;
  String get courseType => _courseType;
  set courseType(String courseType) => _courseType = courseType;
  bool get userOrder => _userOrder;
  set userOrder(bool userOrder) => _userOrder = userOrder;

  Hover.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _slug = json['slug'];
    _name = json['name'];
    _startdate = json['startdate'];
    _enddate = json['enddate'];
    _days = json['days'];
    _courseLanguage = json['course_language'].cast<String>();
    _level = json['level'];
    _courseDescription = json['course_description'];
    _skills =
        json['skills'] != null ? new Skills.fromJson(json['skills']) : null;
    _courseType = json['course_type'];
    _userOrder = json['user_order'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['slug'] = this._slug;
    data['name'] = this._name;
    data['startdate'] = this._startdate;
    data['enddate'] = this._enddate;
    data['days'] = this._days;
    data['course_language'] = this._courseLanguage;
    data['level'] = this._level;
    data['course_description'] = this._courseDescription;
    if (this._skills != null) {
      data['skills'] = this._skills.toJson();
    }
    data['course_type'] = this._courseType;
    data['user_order'] = this._userOrder;
    return data;
  }
}

class Skills {
  List<CourseSkillsGain> _courseSkillsGain;

  Skills({List<CourseSkillsGain> courseSkillsGain}) {
    this._courseSkillsGain = courseSkillsGain;
  }

  List<CourseSkillsGain> get courseSkillsGain => _courseSkillsGain;
  set courseSkillsGain(List<CourseSkillsGain> courseSkillsGain) =>
      _courseSkillsGain = courseSkillsGain;

  Skills.fromJson(Map<String, dynamic> json) {
    if (json['course_skillsGain'] != null) {
      _courseSkillsGain = new List<CourseSkillsGain>();
      json['course_skillsGain'].forEach((v) {
        _courseSkillsGain.add(new CourseSkillsGain.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._courseSkillsGain != null) {
      data['course_skillsGain'] =
          this._courseSkillsGain.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CourseSkillsGain {
  String _id;
  String _skills;

  CourseSkillsGain({String id, String skills}) {
    this._id = id;
    this._skills = skills;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get skills => _skills;
  set skills(String skills) => _skills = skills;

  CourseSkillsGain.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _skills = json['skills'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['skills'] = this._skills;
    return data;
  }
}

class UserActivity {
  String _label;
  Info _info;
  bool _isSubscribed;

  UserActivity({String label, Info info, bool isSubscribed}) {
    this._label = label;
    this._info = info;
    this._isSubscribed = isSubscribed;
  }

  String get label => _label;
  set label(String label) => _label = label;
  Info get info => _info;
  set info(Info info) => _info = info;
  bool get isSubscribed => _isSubscribed;
  set isSubscribed(bool isSubscribed) => _isSubscribed = isSubscribed;

  UserActivity.fromJson(Map<String, dynamic> json) {
    _label = json['label'];
    _info = json['info'] != null ? new Info.fromJson(json['info']) : null;
    _isSubscribed = json['is_subscribed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this._label;
    if (this._info != null) {
      data['info'] = this._info.toJson();
    }
    data['is_subscribed'] = this._isSubscribed;
    return data;
  }
}

class Info {
  String _meetingId;
  String _passCode;
  String _joinUrl;

  Info({String meetingId, String passCode, String joinUrl}) {
    this._meetingId = meetingId;
    this._passCode = passCode;
    this._joinUrl = joinUrl;
  }

  String get meetingId => _meetingId;
  set meetingId(String meetingId) => _meetingId = meetingId;
  String get passCode => _passCode;
  set passCode(String passCode) => _passCode = passCode;
  String get joinUrl => _joinUrl;
  set joinUrl(String joinUrl) => _joinUrl = joinUrl;

  Info.fromJson(Map<String, dynamic> json) {
    _meetingId = json['meeting_id'];
    _passCode = json['pass_code'];
    _joinUrl = json['join_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meeting_id'] = this._meetingId;
    data['pass_code'] = this._passCode;
    data['join_url'] = this._joinUrl;
    return data;
  }
}
