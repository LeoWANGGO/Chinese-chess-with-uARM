I=imread('1.jpg');%  ��ȡͼ��
[height,width]=size(I);
%I=rgb2gray(I);
thresh=graythresh(I);
I_bw=im2bw(I,thresh);
%BW1=edge(I,'sobel'); %��SOBEL���ӽ��б�Ե���
%BW2=edge(I,'roberts');%��Roberts���ӽ��б�Ե���
%BW3=edge(I,'prewitt'); %��prewitt���ӽ��б�Ե���
%BW4=edge(I,'log'); %��log���ӽ��б�Ե���
%BW5=edge(I,'canny'); %��canny���ӽ��б�Ե���
%se=strel('disk',fix(height/500),4);  ��ʴ
%I_bw=imerode(I_bw,se);


%I_bw=imfill(I_bw,'holes');


se = strel('disk', fix(height/500), 4);
I_bw = imdilate(I_bw, se);

STATS=regionprops(I_bw,'Area','Centroid','BoundingBox');
area=cat(10,STATS.Area);
I_bw=bwareaopen(I_bw,fix(max(area(:)*0.1)));
I_bw=imfill(I_bw,'holes');


