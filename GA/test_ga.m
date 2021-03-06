clear; 
close all;

% 调用 my_ga 进行计算
% 求解问题的参数个数         10
% 自定义适应度函数名         my_fitness
% 种群规模                  100
% 每一代中保持不变的数目     50 (即交叉率0.5)
% 变异概率                  0.1 (1/10的个体发生变异)
% 最大演化代数              10000 10000代
% 最小目标值                1.0e-6 个体适应度函数值 < 0.000001结束
[best_fitness, elite, generation, last_generation] = my_ga(10, 'my_fitness', 100, 50, 0.1, 10000, 1.0e-6);

% 输出后10行
% disp(best_fitness(9990:10000,:));
% disp(elite(9990:10000,:))
% 这样是不合适的，因为GA常常在中间就跳出循环了

% 这样才是合适的输出
disp(last_generation); 
i_begin = last_generation - 9;
disp(best_fitness(i_begin:last_generation,:));
% 将elite值转化为问题范围内
my_elite = elite(i_begin:last_generation,:);
my_elite = 2 * (my_elite - 0.5);
disp(my_elite);

% 最佳适应度的演化情况
figure
loglog(1:generation, best_fitness(1:generation), 'linewidth',2)
xlabel('Generation','fontsize',15);
ylabel('Best Fitness','fontsize',15);
set(gca,'fontsize',15,'ticklength',get(gca,'ticklength')*2);

% 最优解的演化情况
figure
semilogx(1 : generation, 2 * elite(1 : generation, :) - 1)
xlabel('Generation','fontsize',15);
ylabel('Best Solution','fontsize',15);
set(gca,'fontsize',15,'ticklength',get(gca,'ticklength')*2);
