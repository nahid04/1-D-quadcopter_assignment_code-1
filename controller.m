function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

u = 0;


% FILL IN YOUR  CODE HERE

kp= 250;
kv= 30;
% a_z= ((u/params.mass)-params.gravity);
a_z_des= 0;
e = s_des - s;
u= params.mass*((a_z_des)+ kp*e(1) + kv*e(2)+ params.gravity);
if (u<params.u_min) 
    u=params.u_min; 
end
if (u>params.u_max)
    u=params.u_max; 
end

end

