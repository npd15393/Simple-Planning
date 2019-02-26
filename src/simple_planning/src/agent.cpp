#include "ros/ros.h"
#include "simple_planning/get_plan.h"
#include <cstdlib>
#include "simple_planning/position.h"
#include <string.h>

using namespace std;

class Agent{
public:
	simple_planning::position current_pos;
	simple_planning::get_plan srv;
	ros::Publisher pose_pub;
	ros::ServiceClient get_plan_client;
	ros::ServiceServer update_goal_server; 

	Agent(string id,simple_planning::position p);
	simple_planning::position process_pos(char* f);
	bool update_cb(simple_planning::update_goal::Request &req, simple_planning::update_goal::Response &res);
	void write_pose(simple_planning::position h);

	////////////////////////////////////////////

	bool update_cb(simple_planning::update_goal::Request  &req, simple_planning::update_goal::Response &res){
		srv.request.goal=req.goal;
		if (get_plan_client.call(srv))
		{
			//rviz(srv.response.path)
			ROS_INFO("Path found");
		}
		else
		{
			ROS_ERROR("Failed to call service planner");
		}
		return true;

	}

	/////////////////////////////////////////////

	void write_pose(simple_planning::position h){
		pose_pub.publish(h);
	}

	/////////////////////////////////////////////

	Agent(string id,simple_planning::position p){
		// ros::init(argc, argv, argv[1]);
		ros::init(argc, argv, "get_plan_client")
		// if (argc != 3)
		// {
		// 	ROS_INFO("usage: add_two_ints_get_plan_client X Y");
		// 	return 1;
		// }

		ros::NodeHandle n;
		get_plan_client = n.serviceClient<simple_planning::get_plan>("get_plan");
		
		srv.request.a_id = id;//argv[1];
		// srv.request. = process_pos(argv[2]);
		current_pos=process_pos(p);
		
		update_goal_server = n.advertiseService("update_goal", update_cb);
		pose_pub = n.advertise<simple_planning::position>("agent_feedback_"+id, 100);
	}

	/////////////////////////////////////////////

	position process_pos(char* f){
		position ans;
		char* u=strtok(f," ,()");
		ROS_INFO(u);
		int g[3];
		int y=0
		while (u != NULL)
		{
		g[y]=atoi(u);
		y++;
		// printf ("%s\n",pch);
		pch = strtok (NULL, " ,.-");
		}
		ans.x=g[0];
		ans.y=g[1];
		ans.yaw=g[2];
		return ans;
	}

};



// int main(int argc, char **argv)
// 	{
// 		ros::init(argc, argv, argv[1]);
// 		if (argc != 3)
// 		{
// 			ROS_INFO("usage: add_two_ints_client X Y");
// 			return 1;
// 		}

// 		ros::NodeHandle n;
// 		ros::ServiceClient client = n.serviceClient<simple_planning::get_plan>("get_plan");
// 		simple_planning::get_plan srv;
// 		srv.request.a_id = argv[1];
// 		srv.request. = process_pos(argv[2]);
		
// 		ros::ServiceServer service = n.advertiseService("update_goal", update_cb);
// 		ros::Publisher pose = n.advertise<simple_planning/position>("agent_feedback_"+argv[1], 100);

// 		if (client.call(srv))
// 		{
// 			srv.response.path
// 			ROS_INFO("Path found");
// 		}
// 		else
// 		{
// 			ROS_ERROR("Failed to call service planner");
// 				return 1;
// 		}

// 				return 0;
// 		}