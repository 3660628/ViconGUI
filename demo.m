%% ����ֱ�����У���
%ֻ�ṩ�ο�

%% ��ʼ��MATLAB - ROS�ڵ�
setenv('ROS_MASTER_URI','http://192.168.10.41:11311/');%ROS����IPV4��ַ���ֶ�����
setenv('ROS_IP','192.168.10.31');%����IPV4��ַ
rosinit;

%% һ���򵥵��˶�
chatpub = rospublisher('cmd_vel','geometry_msgs/Twist');
msg = rosmessage(chatpub);
msg.Linear.X = 0.3;
msg.Angular.Z = 0;
while 1
    send(chatpub,msg);
    pause(0.02);
end

%% ����Matlab��Vicon���ݽ���
% ���忴�ٷ��� ViconDataStreamSDK_MATLABTest.m ���� ��д�ģ�����С�����ȶ��� ViconGUI.m
% �ҵ� ViconGUI.m ������ע���ˣ�����׸��