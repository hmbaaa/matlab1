% calobjvalue.m�����Ĺ�����ʵ��Ŀ�꺯���ļ��㣬�乫ʽ���ñ���ʾ�����棬�ɸ��ݲ�ͬ�Ż����������޸ġ�
%�Ŵ��㷨�ӳ���
%Name: calobjvalue.m
%ʵ��Ŀ�꺯���ļ��㣬�� ��ֵ�� �е���ת��Ϊ ���������
function [objvalue]=calobjvalue(pop)
temp1=decodechrom(pop,1,10);   %��popÿ��ת����ʮ������
x=temp1*50/1023;                         %�ھ��Ȳ�����0.1ʱ����С����Ϊ1023����Ϊ10λ������

objvalue=(-x.*x)+50*x+12;   %����Ŀ�꺯��ֵ