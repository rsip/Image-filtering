% NAME - ZOHA HAMID
% PROBABILITY AND STATISTICS ASSIGNMENT - 1
clc;
clear all;
close all;

window=input('Enter Filter/Window size: ');
v=input('Enter Variance: ');
I=imread('C:\Users\Zoha Hamid\Desktop\baboon256.tif');
figure, imshow(I)
title('Clean image');
Inoisy =  imnoise(I,'gaussian',0,v); % Adding Gaussian Noise

figure, imshow(uint8(Inoisy));
title('Original noisy image');
%for window 3, variance 0.05
if window==3 && v==0.05
    kernel=[0.000161,0.01235,0.000161;0.01235,0.949956,0.01235;0.000161,0.01235,0.000161;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    %for window 3, variance 0.1
elseif window==3 && v==0.1
    
    kernel=[0.00324,0.050442,0.00324;0.050442,0.785272,0.050442;0.00324,0.050442,0.00324;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    
    %window size 3, variance 0.2
elseif window==3 && v==0.2
    kernel=[0.017288,0.096907,0.017288;0.096907,0.543219,0.096907;0.017288,0.096907,0.017288;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    %window 5, variance 0.05
elseif window==5 && v==0.05
    kernel=[0,0,0,0,0;0,0.000161,0.012353,0.000161,0;0,0.012353,0.949948,0.012353,0;0,0.000161,0.012353,0.000161,0;0,0,0,0,0;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    %window 5, variance 0.1
elseif window==5 && v==0.1
    kernel=[0,0,0.000001,0,0;0,0.00324,0.050442,0.00324,0;0.000001,0.050442,0.785269,0.050442,0.000001;0,0.00324,0.050442,0.00324,0;0,0,0.000001,0,0;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    %window 5, variance 0.2
elseif window==5 && v==0.2
    kernel=[0,0.000052,0.000293,0.000052,0;0.000052,0.01726,0.096753,0.01726,0.000052;0.000293,0.096753,0.542356,0.096753,0.000293;0.000052,0.01726,0.096753,0.01726,0.000052;0,0.000052,0.000293,0.000052,0;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    
    %window 7, variance 0.05
elseif window==7 && v==0.05
    kernel=[0,0,0,0,0,0,0;0,0,0,0,0,0,0;0,0,0.000161,0.012353,0.000161,0,0;0,0,0.012353,0.949948,0.012353,0,0;0,0,0.000161,0.012353,0.000161,0,0;0,0,0,0,0,0,0;0,0,0,0,0,0,0;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    
    %window 7, variance 0.2
elseif window==7 && v==0.2
    kernel=[0,0,0,0,0,0,0;0,0,0.000052,0.000293,0.000052,0,0;0,0.000052,0.01726,0.096753,0.01726,0.000052,0;0,0.000293,0.096753,0.542356,0.096753,0.000293,0;0,0.000052,0.01726,0.096753,0.01726,0.000052,0;0,0,0.000052,0.000293,0.000052,0,0;0,0,0,0,0,0,0;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    
    
elseif window==7 && v==0.1
    kernel=[0,0,0,0,0,0,0;0,0,0,0.000001,0,0,0;0,0,0.00324,0.050442,0.00324,0,0;0,0.000001,0.050442,0.785269,0.050442,0.000001,0;0,0,0.00324,0.050442,0.00324,0,0;0,0,0,0.000001,0,0,0;0,0,0,0,0,0,0;];
    pad1=size(kernel,1)-1;
    
    pad2=size(kernel,2)-1;
    
    denoised_output=uint8(zeros(size(Inoisy)));
    
    if(size(kernel,1)==1)
        
        
        
        new=zeros(size(Inoisy,1),size(Inoisy,2)+pad2);
        
        m=0;
        
        n=floor(size(kernel,2)/2);
        
        sz1=size(new,1);
        
        sz2=size(new,2)-pad2;
        
    elseif(size(kernel,2)==1)
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2));
        
        m=floor(size(kernel,1)/2);
        
        n=0;
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2);
        
    else
        
        new=zeros(size(Inoisy,1)+pad1,size(Inoisy,2)+pad2);
        
        m=floor(size(kernel,1)/2);
        
        n=floor(size(kernel,2)/2);
        
        
        
        sz1=size(new,1)-pad1;
        
        sz2=size(new,2)-pad2;
        
    end
    
    for i=1:size(Inoisy,1)
        
        for j=1:size(Inoisy,2)
            
            new(i+m,j+n)=Inoisy(i,j);
            
        end
        
    end
    
    szkernel1=size(kernel,1);
    
    szkernel2=size(kernel,2);
    
    
    for i=1:sz1
        
        for j=1:sz2
            
            sum=0;
            
            m=i;
            
            n=j;
            
            for x=1:szkernel1
                
                for y=1:szkernel2
                    
                    %The weighted sum of the neighborhood pixels is calculated
                    
                    sum=sum+(new(m,n)*kernel(x,y));
                    
                    n =n+1;
                    
                end
                
                n=j;
                
                m=m+1;
                
            end
            
            denoised_output(i,j)= sum;
            
        end
        
    end
    
end %for if loop

figure,imshow(denoised_output);

title('After weighted mean filtering/ Gaussian denoising');
PSNR( I, denoised_output);


