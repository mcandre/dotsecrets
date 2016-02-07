%% Generate a mask highlighting printer dots.
%%
%% Default luminance = 205.
%% Default tolerance = 5.
function M = dotsecret(A, luminance, tolerance)
  switch nargin
    case 1
      luminance = 205;
      tolerance = 5;
    case 2
      tolerance = 5;
  end

  B = rgb2gray(A);
  M = roicolor(B, luminance - tolerance, luminance + tolerance);
end
