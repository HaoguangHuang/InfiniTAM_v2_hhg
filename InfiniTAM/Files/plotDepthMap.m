%% plot a depthMap in 3D PointCloud
function plotDepthMap()
    fx = 573.71;
    fy = 574.394;
    cx = 346.471;
    cy = 249.031;
%     row = 480;%y
%     col = 640;%x
    
%     depthArray = imread('/home/hhg/Documents/myGithub2/InfiniTAM/InfiniTAM/Files/Teddy/Frames/0000.pgm');
%     depthArray = imread('/home/hhg/Downloads/dataSet/depthSet7_pgm/100.pgm');
%     depthArray = imread('/home/hhg/Downloads/dataSet/depthSet7_trun2047_pgm/100.pgm');
%     depthArray = imread('/home/hhg/Downloads/dataSet/resultPicture7_static/c_depth_output100.png');
    depthArray = imread('/home/hhg/Downloads/dataSet/c_depth_output1.pgm');

    pointCloud = [];
    [row, col] = size(depthArray);
    for r = 1:row
        for c = 1:col
            pointCloud(c+(r-1)*col,3) = double(depthArray(r,c)); %z
            pointCloud(c+(r-1)*col,1) = (c - cx)*double(depthArray(r,c))/fx; %x
            pointCloud(c+(r-1)*col,2) = (r - cy)*double(depthArray(r,c))/fy; %y
        end
    end
    
    %plot
    figure;
    plot3(pointCloud(:,1), pointCloud(:,2), pointCloud(:,3),'r.');
    hold on; plot3(0,0,0,'bo','Markersize',5)
    xlabel('x'), ylabel('y'),zlabel('z');
%     title('my data, 100th frame, truncate 2047, from pgm');
%     title('my data, 100th frame, no truncate, from pgm');
%     title('my data, 100th frame, no truncate, from png');
%     title('Teddy, 0th frame, from pgm');
    title('my data, 0th frame, no truncate, from internet, from pgm');

end