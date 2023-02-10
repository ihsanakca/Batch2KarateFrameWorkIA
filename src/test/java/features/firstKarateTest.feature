Feature: Welcome to Karate

  Scenario: how to print
    Given print "Hello Karate World"
    When print 'another file print'
    * print 'my name is',"İhsan Akçair"
    * print 'my name is'+"İhsan Akçair"
    * print 'my name is'+'İhsan Akçair'
      # , koyunca boşluk; + koyunca boşluksuz oluyor...

  Scenario: Variables
    * def name = 'Robert'
    * print 'My name is', name
    * def age = 19
    * print name, "is", age, 'years old'
      # tek '' ya da çift "" tırnak farketmiyot
    * print 5+5

  Scenario: Difficult parameters
    * def user = {"name" : "Hasan", "role" : "admin"}
    * print user
    * print user.name
    * print user.role

  Scenario: Json Body
    * def user =
    """
    {
  "name": "Hasan",
  "role": "admin",
  "age" : 24
    }
    """
    * print user
    * print user.age


  Scenario: Json body with Array Objects
    Given def user =
    """
    [
      {
  "name": "Hasan",
  "role": "admin",
  "age" : 24
    },
      {
  "name": "Mustafa",
  "role": "member",
  "age" : 25
    }
    ]
    """
    * print user
    * print user[0].name
    * print user[1].role
