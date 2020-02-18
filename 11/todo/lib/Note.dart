class Note
{
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  //Creating a new todo
  Note(this._title,this._priority,this._date,[this._description]);

  //Editing existing todo
  Note.withId(this._id,this._title,this._priority,this._date,[this._description]);
//TODO: Getters
  int get id =>_id;
  String get title => _title;
  String get description => _description;
  String get date => _date;
  int get priority => _priority;

//TODO:Setters
  set title(String newTitle)
  {
    if(newTitle.length <= 255)
    this._title=newTitle;
  }

  set description(String newDescription)
  {
    if(newDescription.length <= 255)
    this._description=newDescription;
  }
 set date(String newDate)
 {
   this._date=newDate;
 }

 set priority(int newPriority)
 {
   if(newPriority>=1 && newPriority<=2)
   this._priority=newPriority;
 }
//convert note object to map object
//used to save and retrieve from database
Map<String,dynamic> toMap()
{
  var map= Map<String,dynamic>();
  if(id != null)
  {
    map['id']=_id;
  }
  map['title']=_title;
  map['description']=_description;
  map['priority']=_priority;
  map['date']=_date;
  return map;
}

Note.fromMapObject(Map<String,dynamic> map)
{
  this._id=map['id'];
  this._title=map['title'];
  this._description=map['description'];
  this._date=map['date'];
  this._priority=map['priority'];

}

}