% �� ���������С���˷������������
% ��֪  ��������tdata���������cdata��(Ҳ����xdata��ydata���ҳ��ȶ���n������Ϻ����ı��ʽΪ
% F(x,tdata)= x(1) + x(2)*exp(-0.02*x(3)*tdata);
% 
% ��Ŀ�꺯��Ϊmin ��(F(x,tdata(i))-cdata(i))^2    ---��С���˱��ʽ
% ���У�F(x,tdata) =x(1) + x(2)*exp(-0.02*x(3)*tdata);
% ��ʼ������Ϊx0 = [0.2,0.05,0.05];�������ʽ�� 3������[x(1),x(2),x(3)]��
% �⣺�Ƚ�����Ϻ����ļ���������Ϊcurvefun.m
% function F = curvefun(x,xdata)
% F = x(1) + x(2)*exp(-0.02*x(3)*tdata);
% Ȼ���������tdata��cdata

tdata  = linspace(100,1000,10);
cdata = 1e-05.*[454 499 535 565 590 610 626 639 650 659 ];
x0 = [0.2,0.05,0.05];
x = lsqcurvefit('curvefun',x0,tdata,cdata)
f = curvefun(x,tdata)
plot (tdata,cdata,'o',tdata,f,'r-')
% 
% �����������������֪��������xdata���������ydata������֪������������ĺ�����ϵΪydata=F(x, xdata)��
% ����֪��ϵ������x�������������ϣ���xʹ�������������С���˱��ʽ������
% min ��(F(x,xdatai)-ydatai)^2
% 
% ����  lsqcurvefit
% ��ʽ  x = lsqcurvefit(fun,x0,xdata,ydata)
% x = lsqcurvefit(fun,x0,xdata,ydata,lb,ub)
% x = lsqcurvefit(fun,x0,xdata,ydata,lb,ub,options)
% [x,resnorm,residual] = lsqcurvefit(��)
% [x,resnorm,residual,exitflag] = lsqcurvefit(��)
% [x,resnorm,residual,exitflag,output] = lsqcurvefit(��)
% [x,resnorm,residual,exitflag,output,lambda] = lsqcurvefit(��)
% [x,resnorm,residual,exitflag,output,lambda,jacobian] =lsqcurvefit(��)
% ����˵����
% x0Ϊ��ʼ��������xdata��ydataΪ�����ϵydata=F(x, xdata)�����ݣ�
% lb��ubΪ���������½���Ͻ�lb��x��ub����û��ָ���磬��lb=[ ]��ub=[ ]��
% optionsΪָ�����Ż�������
% funΪ����Ϻ���������x����Ϻ���ֵ���䶨��Ϊ     function F = myfun(x,xdata)
% resnorm=sum ((fun(x,xdata)-ydata).^2)������x���в��ƽ���ͣ�
% residual=fun(x,xdata)-ydata������x���Ĳв
% exitflagΪ��ֹ������������
% outputΪ������Ż���Ϣ��
% lambdaΪ��x����Lagrange���ӣ�
% jacobianΪ��x����Ϻ���fun��jacobian����