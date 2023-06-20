clc;
% Sample data
numberOfRows = 5;
V = rand(numberOfRows, 1)
N = rand(numberOfRows, 1)
% Find min distance
minDistance = inf;
for ni = 1 : numberOfRows
  for vi = 1 : numberOfRows
    distances(vi, ni) = abs(N(ni) - V(vi));
    if distances(vi, ni) < minDistance
      minNRow = ni;
      minVRow = vi;
      minDistance = distances(vi, ni);
    end
  end
end
% Report to command window:
distances
fprintf('Closest distance is %f which occurs between row %d of N and row %d of V\n',...
  minDistance, minNRow, minVRow);