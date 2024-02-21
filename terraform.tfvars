team_names = ["Frontend", "Backend"] // Teams will need to be defined here before they can be added to the users.

users = {
  "JoeAshworth" = ["Frontend", "Backend"], // This will add my user as a member of the Organisation and also to both teams. As I am an owner, this will try to demote me to a member, which is not possible.
  "user1"      = ["Frontend"], // This will add user1 as a member of the Organisation and to the Frontend team
  "user2"      = [], // This will add user2 to the the Organisation, but not to any teams. 
}

repositories = {
  "voxsmart-service-api" = {
    description     = "VoxSmart Service API"
    has_issues      = true
    visibility      = "private"
    permissions     = {
      "admin" = ["Backend"],
      "pull"  = ["Frontend"]
    }
  },
  "voxsmart-service-ui" = {
    description     = "VoxSmart Service UI"
    visibility      = "private"
    permissions     = {
      "admin" = ["Frontend"]
    }
  },
  "voxsmart-service-sdk" = {
    description     = "VoxSmart Service SDK"
    has_discussions = true
    has_wiki        = true
    has_issues      = true
    visibility      = "public"
    permissions     = {
      "push" = ["Frontend", "Backend"]
    }
  }
}



