function pic=getpic();
f=ftp('192.168.137.99','pi','raspberry');
cd(f,'ftpcamera');
path=mget(f,'*.jpg');
%delete(f,'webwxgetmsgimg (4).jpg') %ֻ��ɾ���ö��ļ������ļ�
pic=imread(path{1});
%delete(f,path{1})
close(f)
end