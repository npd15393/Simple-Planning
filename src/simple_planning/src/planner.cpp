#include "ros/ros.h"
#include "get_plan.h"
#include "simple_planning/position.h"
#include <map>

using namespace std;

// struct position{
// 	int x;
// 	int y;
// 	int yaw;
// };

class planner{
	public:
		map<string,vector<position>> plans;
		planner();
		bool generate_plan(simple_planning::get_plan::Request  &req, simple_planning::get_plan::Response &res);
		vector<position> get_plan(string a_id);

		planner(){
			ros::init(argc, argv, "planner_node");
			ros::NodeHandle n;
			
			ros::ServiceServer service = n.advertiseService("get_plan", planner::generate_plan);
			ROS_INFO("planner init");
			ros::spin();

			return 0;
			ros::ServiceClient client = n.serviceClient<simple_planning::update_goal>("update_goal");

			}

		bool generate_plan(simple_planner::get_plan::Request  &req, simple_planner::get_plan::Response &res){
			string a_id=req.a_id;
			position g=req.position;

			vector<position> p;
			//search graph
			


			plans.insert(pair<string,vector<position>>(a_id,p));
			res.ans=p;
			return true;
		}

		vector<position> get_plan(string a_id){
		///////////////
		// publish  plans[a_id];
		//////////
		return true;
		}
};



// int main(int argc, char **argv)
// {
// 	ros::init(argc, argv, "planner_node");
// 	ros::NodeHandle n;
	
// 	ros::ServiceServer service = n.advertiseService("get_plan", disp);
// 	ROS_INFO("planner init");
// 	ros::spin();

// 	return 0;
// }