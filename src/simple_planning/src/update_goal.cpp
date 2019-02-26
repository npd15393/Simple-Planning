#include "ros/ros.h"
#include "simple_planning/get_plan.h"
#include <cstdlib>
#include "simple_planning/position.h"
#include "simple_planning/update_goal.h"

position process_pos(char* f);

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

int main(int argc, char **argv)
	{
		ros::init(argc, argv, "agent");
		if (argc != 3)
		{
			ROS_INFO("usage: update_goal agent_id goal_position");
			return 1;
		}

		ros::NodeHandle n;
		ros::ServiceClient client = n.serviceClient<simple_planning::update_goal>("update_goal");
		simple_planning::update_goal srv;
		srv.request.id = argv[1];
		srv.request.goal_pose = process_pos(argv[2]);
		
		if (client.call(srv))
		{
			ROS_INFO("Goal of agent %s updated to %s",argv[1],argv[2]);
		}
		else
		{
			ROS_ERROR("Failed to call service /update_goal");
				return 1;
		}

				return 0;
		}