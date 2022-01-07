classdef Image_Processing < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        ImageviewerTab                  matlab.ui.container.Tab
        Panel_4                         matlab.ui.container.Panel
        UIAxes                          matlab.ui.control.UIAxes
        Panel_3                         matlab.ui.container.Panel
        BackgroundLabel                 matlab.ui.control.Label
        BrowseButton                    matlab.ui.control.Button
        BodyPartExaminedEditField       matlab.ui.control.EditField
        BodypartexaminedEditFieldLabel  matlab.ui.control.Label
        PatientAgeEditField             matlab.ui.control.EditField
        PatientAgeEditFieldLabel        matlab.ui.control.Label
        PatientNameEditField            matlab.ui.control.EditField
        PatientNameEditFieldLabel       matlab.ui.control.Label
        ModalityEditField               matlab.ui.control.EditField
        ModalityEditFieldLabel          matlab.ui.control.Label
        TotalsizeEditField              matlab.ui.control.EditField
        TotalsizeEditField_2Label       matlab.ui.control.Label
        ImagecColorEditField            matlab.ui.control.EditField
        ImagecolorEditFieldLabel        matlab.ui.control.Label
        BitdepthEditField               matlab.ui.control.NumericEditField
        BitdepthEditFieldLabel          matlab.ui.control.Label
        HeightEditField                 matlab.ui.control.NumericEditField
        HeightEditFieldLabel            matlab.ui.control.Label
        WidthEditField                  matlab.ui.control.NumericEditField
        WidthEditFieldLabel             matlab.ui.control.Label
        WhiteimageTab                   matlab.ui.container.Tab
        Panel_2                         matlab.ui.container.Panel
        ColorPixelsButton               matlab.ui.control.Button
        WhiteImageButton                matlab.ui.control.Button
        UIAxes2                         matlab.ui.control.UIAxes
        ZoomTab                         matlab.ui.container.Tab
        BilinearinterpolationPanel      matlab.ui.container.Panel
        UIAxes3_2                       matlab.ui.control.UIAxes
        NearestneighborinterpolationPanel  matlab.ui.container.Panel
        UIAxes3                         matlab.ui.control.UIAxes
        Panel                           matlab.ui.container.Panel
        ApplyButton                     matlab.ui.control.Button
        FactorEditField                 matlab.ui.control.NumericEditField
        FactorEditFieldLabel            matlab.ui.control.Label
        HistogramTab_2                  matlab.ui.container.Tab
        NormalizedHistogramofEqualizedImagePanel  matlab.ui.container.Panel
        UIAxes6_2                       matlab.ui.control.UIAxes
        NormalizedHistogramoforiginalimagePanel  matlab.ui.container.Panel
        UIAxes4_2                       matlab.ui.control.UIAxes
        EqualizedImagePanel             matlab.ui.container.Panel
        UIAxes5_2                       matlab.ui.control.UIAxes
        OriginalImagePanel              matlab.ui.container.Panel
        UIAxes5_3                       matlab.ui.control.UIAxes
        Panel_9                         matlab.ui.container.Panel
        EqualizeandShowButton           matlab.ui.control.Button
        ShowHistogramButton             matlab.ui.control.Button
        SpatialFilteringTab             matlab.ui.container.Tab
        FilteredImagePanel              matlab.ui.container.Panel
        UIAxes3_4                       matlab.ui.control.UIAxes
        OriginalImagePanel_2            matlab.ui.container.Panel
        UIAxes3_8                       matlab.ui.control.UIAxes
        Panel_10                        matlab.ui.container.Panel
        FactorEditField_2               matlab.ui.control.NumericEditField
        FactorEditField_2Label          matlab.ui.control.Label
        EnhanceButton                   matlab.ui.control.Button
        KernelSizeEditField             matlab.ui.control.NumericEditField
        KernelSizeLabel                 matlab.ui.control.Label
        FourierTab                      matlab.ui.container.Tab
        MagnitudePanel                  matlab.ui.container.Panel
        UIAxes3_6                       matlab.ui.control.UIAxes
        PhasePanel                      matlab.ui.container.Panel
        UIAxes3_7                       matlab.ui.control.UIAxes
        OriginalImagePanel_3            matlab.ui.container.Panel
        UIAxes3_5                       matlab.ui.control.UIAxes
        Panel_11                        matlab.ui.container.Panel
        ToEditField                     matlab.ui.control.NumericEditField
        ToEditFieldLabel                matlab.ui.control.Label
        RemoveFrequencyLabel            matlab.ui.control.Label
        FromEditField                   matlab.ui.control.NumericEditField
        FromEditFieldLabel              matlab.ui.control.Label
        ShowButton                      matlab.ui.control.Button
        FourierfilterTab                matlab.ui.container.Tab
        Panel_12                        matlab.ui.container.Panel
        FilterTypeButtonGroup           matlab.ui.container.ButtonGroup
        SobelButton                     matlab.ui.control.ToggleButton
        BoxButton                       matlab.ui.control.ToggleButton
        EnhanceButton_2                 matlab.ui.control.Button
        KernelSizeEditField_2           matlab.ui.control.NumericEditField
        KernelSizeEditField_2Label      matlab.ui.control.Label
        DifferencePanel                 matlab.ui.container.Panel
        UIAxes3_11                      matlab.ui.control.UIAxes
        FourierfilteredImagePanel       matlab.ui.container.Panel
        UIAxes3_10                      matlab.ui.control.UIAxes
        OriginalImagePanel_4            matlab.ui.container.Panel
        UIAxes3_9                       matlab.ui.control.UIAxes
        NoiseTab                        matlab.ui.container.Tab
        HistogramofROIPanel             matlab.ui.container.Panel
        UIAxes6_3                       matlab.ui.control.UIAxes
        ROIPanel                        matlab.ui.container.Panel
        UIAxes5_5                       matlab.ui.control.UIAxes
        NoisyImagePanel                 matlab.ui.container.Panel
        UIAxes5_6                       matlab.ui.control.UIAxes
        OriginalImagePanel_5            matlab.ui.container.Panel
        UIAxes5_4                       matlab.ui.control.UIAxes
        Panel_13                        matlab.ui.container.Panel
        segmaEditField                  matlab.ui.control.EditField
        segmaEditFieldLabel             matlab.ui.control.Label
        MeanEditField                   matlab.ui.control.EditField
        MeanEditFieldLabel              matlab.ui.control.Label
        ChooseROIButton                 matlab.ui.control.Button
        CreateImageButton               matlab.ui.control.Button
        NoiseTypeButtonGroup            matlab.ui.container.ButtonGroup
        SaltandpepperButton             matlab.ui.control.ToggleButton
        UniformButton                   matlab.ui.control.ToggleButton
        GaussianButton                  matlab.ui.control.ToggleButton
        ApplyButton_2                   matlab.ui.control.Button
        BackProjectionTab               matlab.ui.container.Tab
        Panel_14                        matlab.ui.container.Panel
        defualtCheckBox                 matlab.ui.control.CheckBox
        getsinogramButton               matlab.ui.control.Button
        stepsizeEditField               matlab.ui.control.NumericEditField
        stepsizeEditFieldLabel          matlab.ui.control.Label
        MaxAngleEditField               matlab.ui.control.NumericEditField
        MaxAngleEditFieldLabel          matlab.ui.control.Label
        CreatephantomButton             matlab.ui.control.Button
        FilterTypeButtonGroup_2         matlab.ui.container.ButtonGroup
        HammingButton                   matlab.ui.control.ToggleButton
        RamLakButton                    matlab.ui.control.ToggleButton
        NoneButton                      matlab.ui.control.ToggleButton
        getlaminogramButton             matlab.ui.control.Button
        LaminogramPanel                 matlab.ui.container.Panel
        UIAxes3_14                      matlab.ui.control.UIAxes
        sinogramPanel                   matlab.ui.container.Panel
        UIAxes3_13                      matlab.ui.control.UIAxes
        OriginalImagePanel_6            matlab.ui.container.Panel
        UIAxes3_12                      matlab.ui.control.UIAxes
        ColorMapTab                     matlab.ui.container.Tab
        Panel_16                        matlab.ui.container.Panel
        UIAxes_2                        matlab.ui.control.UIAxes
        Panel_15                        matlab.ui.container.Panel
        BrowseButton_2                  matlab.ui.control.Button
        ChooseROIButton_2               matlab.ui.control.Button
        UIAxes3_3                       matlab.ui.control.UIAxes
    end


    properties (Access = private)
        whiteImage % creates a wite image
        imageFile % Browsed Image
        info % image information
        zoomFactor % factor to zoom image
        grayImage % image RGB to gray
        zoomedImage % Image after zooming
        kernelSize % kernel size of the filter
        enhancementFactor % input from the user to be multiplied with the image
        KernelSizeFourier % kernel size of fourier filter
        SpacialLowpassImg % result of spacial filtering
        filterButton % filter button pressed

        frequencyFrom % Start frequency to remove
        frequencyTo % End frequency to remove
        phantom % phantom image for noise
        noiseType % type of noise to apply
        roiImage % the region of interest image
        noisyImage % noised image
        maxAngle % max angle for sinogram
        step % step of angle 
        Theta % list of angles
        backProjPhantom % back Projection Phantom
        backProjFilter % back Projection Filter type
        sinogram % sinogramImage
        defualtTheta % defualt theta for sinogram
        variance % the variance of the image
        varImage % the image to get the variance region for
    end
    
    methods (Access = private)
        
        function ConvertToGrayscale(app)
            if app.info.ColorType == 'truecolor'
                    %check if the image is RGB and trnsform it to grayscale
                    %This formula closely represents the average 
                    %person's relative perception of the brightness of red, green, and blue light.
                    app.grayImage = 0.2989 * app.imageFile(:,:,1) + 0.5870 * app.imageFile(:,:,2) + 0.1140 * app.imageFile(:,:,3);
            else
                    app.grayImage = app.imageFile;
            end
            
        end
        
        function results = normalizedHistogram(app,grayImage)
            %get the normalized histogram for any image
            histImage=zeros(1,256);
            [Row,Col]=size(grayImage); 
            for i=1:Row
                for j=1:Col
                    intensity=grayImage(i,j);
                    histImage(intensity+1)=histImage(intensity+1)+1;
                end
            end
            %divide by the total number of pixels
            histImage=histImage./(Col*Row);
            results=histImage;
        end
        
        
        function results = spacialFilter(app, inputImage,filter)
            Row= size(inputImage,1);
            Col= size(inputImage,2);
            %pad the image
            paddedImage=zeros(Row+(app.KernelSizeFourier-1),Col+(app.KernelSizeFourier-1));
                    for i=1:Row
                        for j=1:Col
                            paddedImage(i+(app.KernelSizeFourier-1)/2,j+(app.KernelSizeFourier-1)/2)=inputImage(i,j);
                        end
                    end
                  %then convolution between the padded image and the kernel
                    for i=1:Row
                        for j=1:Col
                            Output(i,j) = sum(sum(paddedImage(i:i+(app.KernelSizeFourier-1),j:j+(app.KernelSizeFourier-1)).*filter));
                        end
                    end
                    results =Output;
        end
        
        function results = LocalVariance(app,img)
            Row= size(img,1);
            Col= size(img,2);
            %pad the image
            paddedImage=zeros(Row+(25-1),Col+(25-1));
            for i=1:Row
                for j=1:Col
                    paddedImage(i+(25-1)/2,j+(25-1)/2)=img(i,j);
                end
            end
            app.variance=ones(Row,Col);
            for k=1:Row
                for m=1:Col
                    kernel = paddedImage(k:k+(25-1),m:m+(25-1));
                    %get the histogram of the kernel
                    histImage=zeros(1,256);
                    for i=1:25
                        for j=1:25
                            intensity=kernel(i,j);
                            histImage(intensity+1)=histImage(intensity+1)+1;
                        end
                    end
                    %get the mean and standerd deviation
                    %Mean= (Sum of values)/count
                    %variance= E(x^2)-(E(x))^2
                    %segma = sqrt(variance)
                    sumX=0;
                    sumX2=0;
                    count=0;
                    for i=1:256
                        count=count+histImage(i);
                        sumX=sumX+i*histImage(i);
                        sumX2=sumX2+i^2*histImage(i);
                    end
                    app.variance(k,m)=(sumX2/count)-(sumX/count)^2;
                    
                end
            end
            results=app.variance;
        end
    end


    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %Hide all components 
            app.UIAxes.Visible='off';
            app.WidthEditField.Visible='off';
            app.HeightEditField.Visible='off';
            app.BitdepthEditField.Visible='off';
            app.ImagecColorEditField.Visible='off';
            app.TotalsizeEditField.Visible='off';
            
            app.WidthEditFieldLabel.Visible='off';
            app.HeightEditFieldLabel.Visible='off';
            app.BitdepthEditFieldLabel.Visible='off';
            app.BodypartexaminedEditFieldLabel.Visible='off';
            
            app.ImagecolorEditFieldLabel.Visible='off';
            app.TotalsizeEditField_2Label.Visible='off';
            
            app.PatientNameEditField.Visible='off';
            app.PatientNameEditFieldLabel.Visible='off';
            app.ModalityEditField.Visible='off';
            app.ModalityEditFieldLabel.Visible='off';
            app.PatientAgeEditField.Visible='off';
            app.PatientAgeEditFieldLabel.Visible='off';
            app.BodyPartExaminedEditField.Visible='off';
            app.BodypartexaminedEditFieldLabel.Visible='off';
            app.BackgroundLabel.Visible='on';
            app.UIAxes2.Visible='off';
            app.ColorPixelsButton.Visible='off';
            app.UIAxes3.Visible='off';
            app.UIAxes3_2.Visible='off';
            app.EqualizeandShowButton.Visible='off';
            app.UIAxes6_2.Visible='off';
            app.UIAxes4_2.Visible='off';
            app.UIAxes5_2.Visible='off';
            app.UIAxes5_3.Visible='off';
            app.UIAxes3_8.Visible='off';
            app.UIAxes3_4.Visible='off';
            app.UIAxes3_5.Visible='off';
            app.UIAxes3_6.Visible='off';
            app.UIAxes3_7.Visible='off';
             app.UIAxes3_9.Visible='off';
            app.UIAxes3_10.Visible='off';
            app.UIAxes3_11.Visible='off';
            app.filterButton=app.BoxButton;
            app.noiseType= app.GaussianButton;
            app.ApplyButton_2.Visible='off';
            app.ChooseROIButton.Visible='off';
            app.UIAxes5_4.Visible='off';
            app.UIAxes5_6.Visible='off';
            app.UIAxes5_5.Visible='off';
            app.UIAxes6_3.Visible='off';
            app.MeanEditField.Visible='off';
            app.segmaEditField.Visible='off';
            app.MeanEditFieldLabel.Visible='off';
            app.segmaEditFieldLabel.Visible='off';
            app.step=1;
            app.maxAngle=1;
            app.backProjFilter=app.NoneButton;
            app.getsinogramButton.Visible='off';
            app.getlaminogramButton.Visible='off';
            app.UIAxes3_12.Visible='off';
            app.UIAxes3_13.Visible='off';
            app.UIAxes3_14.Visible='off';
            app.UIAxes_2.Visible='off';
        end

        % Callback function
        function WidthEditFieldValueChanged(app, event)

           
        end

        % Button pushed function: BrowseButton
        function BrowseButtonPushed(app, event)

            
            try
               %browse files
               [filename,filepath] = uigetfile({'*.jpg;*.png;*.bmp;*.dcm;*.tif'}, 'Select File to Open');
               fullname = [filepath, filename];
               [path ,name , format]=fileparts(fullname);
               app.BackgroundLabel.Visible='off';
            catch
                %If no files is selected or cancel button pressed
                format='None';
            end
            %check if the select file is a dicom file and accordingly use the appropriate functions
            switch lower(format)
                case '.dcm'
                    try
                       app.info=dicominfo(fullname);
                       app.imageFile=dicomread(app.info);
                       app.UIAxes.Position=[238,0,app.info.Width,app.info.Height];
                       imshow(app.imageFile,[],'parent',app.UIAxes);
                    catch
                        uialert(app.UIFigure ,'choose a file','File is corrupted');
                        format='None';
                    end
                   try
                       app.PatientNameEditField.Value= app.info.("PatientName").FamilyName;
                       app.PatientNameEditField.Visible='on';
                       app.PatientNameEditFieldLabel.Visible='on';
                   catch
                       app.PatientNameEditField.Value= 'None';
                       app.PatientNameEditField.Visible='off';
                       app.PatientNameEditFieldLabel.Visible='off';  
                   end
                   try
                        app.ModalityEditField.Value=app.info.("Modality");
                        app.ModalityEditField.Visible='on';
                        app.ModalityEditFieldLabel.Visible='on';
                   catch
                       app.ModalityEditField.Value='None';
                       app.ModalityEditField.Visible='off';
                       app.ModalityEditFieldLabel.Visible='off';
                   end
                   try
                        app.PatientAgeEditField.Value=string(app.info.("PatientAge"));
                        app.PatientAgeEditField.Visible='on';
                        app.PatientAgeEditFieldLabel.Visible='on';
                   catch
                       app.PatientAgeEditField.Value='None';
                       app.PatientAgeEditField.Visible='off';
                       app.PatientAgeEditFieldLabel.Visible='off';
                   end
                   try
                       app.BodyPartExaminedEditField.Value=app.info.("StudyDescription");
                       app.BodyPartExaminedEditField.Visible='on';
                       app.BodypartexaminedEditFieldLabel.Visible='on';
                   catch
                       app.BodyPartExaminedEditField.Visible='off';
                       app.BodypartexaminedEditFieldLabel.Visible='off';
                       app.BodyPartExaminedEditField.Value='None';
                       
                   end
                 %if any of these formats selected use the appropriate functions to open them
                case { '.jpg','.bmp','.png','.tif'}
                    try
                        app.imageFile = imread(fullname);
                        app.info = imfinfo(fullname);
                        app.UIAxes.Position=[238,0,app.info.Width,app.info.Height];
                        imshow(app.imageFile,'parent',app.UIAxes);
                        axis(app.UIAxes, 'off');
                        
                        app.PatientNameEditField.Visible='off';
                        app.PatientNameEditFieldLabel.Visible='off';
                        app.ModalityEditField.Visible='off';
                        app.ModalityEditFieldLabel.Visible='off';
                        app.PatientAgeEditField.Visible='off';
                        app.PatientAgeEditFieldLabel.Visible='off';
                        app.BodyPartExaminedEditField.Visible='off';
                        app.BodypartexaminedEditFieldLabel.Visible='off';
                    catch
                        %handle corrupted files
                        uialert(app.UIFigure ,'choose a file','File is corrupted');
                        format='None';
                    end
                otherwise
                    %In this case no file is selected 
                    uialert(app.UIFigure ,'choose a file','Invalid input');
                 
            end
           if format ~= 'None'
               app.WidthEditField.Value = double(app.info.Width);
               app.HeightEditField.Value = double(app.info.Height);
               sizeInBit = app.info.FileSize * 8;
               app.TotalsizeEditField.Value = num2str(sizeInBit);
               app.BitdepthEditField.Value = double(app.info.BitDepth);
               
               if app.info.ColorType == 'truecolor'
                   app.ImagecColorEditField.Value = 'RGB';
               else
                   
                   app.ImagecColorEditField.Value = app.info.ColorType;
               end
               
               app.UIAxes.Visible='off';
               app.WidthEditField.Visible='on';
               app.HeightEditField.Visible='on';
               app.BitdepthEditField.Visible='on';
               app.ImagecColorEditField.Visible='on';
               app.TotalsizeEditField.Visible='on';
            
               app.WidthEditFieldLabel.Visible='on';
               app.HeightEditFieldLabel.Visible='on';
               app.BitdepthEditFieldLabel.Visible='on';
               app.ImagecolorEditFieldLabel.Visible='on';
               app.TotalsizeEditField_2Label.Visible='on';
           end
           
         
        end

        % Callback function
        function WhiteImageMenuSelected(app, event)
            
        end

        % Callback function
        function ColorImageMenuSelected(app, event)
           
        end

        % Button pushed function: WhiteImageButton
        function WhiteImageButtonPushed(app, event)
            %generate a white image 100x100
            app.whiteImage = 255 * ones(100, 100, 3, 'uint8');
            imshow(app.whiteImage,'InitialMagnification','fit','parent',app.UIAxes2);
            app.ColorPixelsButton.Visible='on';
        end

        % Button pushed function: ColorPixelsButton
        function ColorPixelsButtonPushed(app, event)
            for k=97:100
                %last 4 pixels in the second row in red
                app.whiteImage(2,k,:)=[255,0,0];
                %last 4 pixels in the second column in blue
                app.whiteImage(k,2,:)=[0,0,255];
            end
            
            imshow(app.whiteImage,'parent',app.UIAxes2);
        end

        % Value changed function: FactorEditField
        function FactorEditFieldValueChanged(app, event)
            app.zoomFactor = app.FactorEditField.Value;
        end

        % Callback function
        function InterpolationButtonGroupSelectionChanged(app, event)

                
        end

        % Button pushed function: ApplyButton
        function ApplyButtonPushed(app, event)
            try
                axis(app.UIAxes3,'equal');
                set(app.UIAxes3,'Units','pixels');
                ConvertToGrayscale(app);
                %get the new size of the zoomed image
                Col = app.zoomFactor*size(app.grayImage,2);
                Row = app.zoomFactor*size(app.grayImage,1);
                
                %Nearest neighbor interpolation
                %Divid each new index in the matrix over the zooming factor
                %then round the value and in case the index is 0 then
                %replace it with 1.
                rowInterpolationIndecies =max( round([1:Row]./(app.zoomFactor)),1);
                colInterpolationIndecies =max( round([1:Col]./(app.zoomFactor)),1);
                app.zoomedImage=app.grayImage(rowInterpolationIndecies,colInterpolationIndecies);
                app.UIAxes3.Position=[1,2,Col,Row];
                imshow(app.zoomedImage,[],'parent',app.UIAxes3);
                
                %BIlinear interpolation
                %                  p2
                %    y2 *---------*---------*
                %       |         |         |
                %       |         |         |
                %       |         |p        |
                %    y  *---------*---------*
                %       |         |         |
                %       |         |         |
                %       |         |p1       |
                %    y1 *---------*---------*
                %       x1        x         x2
                for i = 1:Row
                    x=i/app.zoomFactor;
                    %in order to get the value of point x we have to
                    %linearly interpolate point x1 and x2
                    x1=max(floor(x),1);
                    x2=ceil(x);
                    %distance from the point of interest to the pixel
                    %used rem becuase it is a ratio, it will be max 1
                    distanceX=rem(x,1);
                    for j=1:Col
                       %same proccess of rows
                       y=j/app.zoomFactor;
                       y1=max(floor(y),1);
                       y2=ceil(y);
                       distanceY=rem(y,1);
                       bottomLeft=app.grayImage(x1,y1);
                       topLeft=app.grayImage(x1,y2);
                       bottomRight=app.grayImage(x2,y1);
                       topRight=app.grayImage(x2,y2);
                       p1=bottomRight*distanceY+bottomLeft*(1-distanceY);
                       p2=topRight*distanceY+topLeft*(1-distanceY);
                       zoomedImage(i,j)=p1*distanceX+p2*(1-distanceX);
                    end
                end
                app.UIAxes3_2.Position=[1,2,Col,Row];
                imshow(zoomedImage,[],'parent',app.UIAxes3_2);
            catch
                uialert(app.UIFigure ,'choose a file','Invalid input');
            end
            
        end

        % Button pushed function: ShowHistogramButton
        function ShowHistogramButtonPushed(app, event)
           try
                ConvertToGrayscale(app);
                app.UIAxes4_2.Visible='on';
                app.UIAxes5_3.Position=[92,20,size(app.grayImage,2),size(app.grayImage,1)];
                imshow(app.grayImage,'Parent',app.UIAxes5_3)
                %normalized histogram
                histImage=normalizedHistogram(app,app.grayImage);
                bar(histImage,'Parent',app.UIAxes4_2);
                app.EqualizeandShowButton.Visible='on';
            catch
                uialert(app.UIFigure ,'choose a file','Invalid input');
           end
        end

        % Button pushed function: EqualizeandShowButton
        function EqualizeandShowButtonPushed(app, event)
            %Equalization
            Row=size(app.grayImage,1);
            Col=size(app.grayImage,2);
            equalizedImage = zeros(Row, Col,'uint8');
            freq=zeros(256,1);
            probf=zeros(256,1);
            probc=zeros(256,1);
            output=zeros(256,1);
            
            numofpixels=Row*Col;
            for i=1:Row
                for j=1:Col
                    %get the frequency of each intensity
                    %divide by total number of pixels to get their
                    %probability
                    intensity=app.grayImage(i,j);
                    freq(intensity+1)=freq(intensity+1)+1;
                    probf(intensity+1)=freq(intensity+1)/numofpixels;
                end
            end
            sum=0;
            %The cumulative distribution probability is calculated. 
            for i=1:size(probf)
                %for each intensity we will get the cdf by adding the pdf
                %of each from the first one untill it then sum 
               sum=sum+probf(i);
               probc(i)=sum;
               output(i)=max(round(probc(i)*256),1);
            end
            for i=1:Row
                for j=1:Col
                        equalizedImage(i,j)=output(app.grayImage(i,j)+1);
                end
            end
            app.UIAxes5_2.Position=[91,35,Col,Row];
            imshow(equalizedImage,'Parent',app.UIAxes5_2);
            
            %normalized histogram
            h=normalizedHistogram(app,equalizedImage);
            bar(h,'Parent',app.UIAxes6_2);
            app.UIAxes6_2.Visible='on';
        end

        % Value changed function: KernelSizeEditField
        function KernelSizeEditFieldValueChanged(app, event)
            app.kernelSize = app.KernelSizeEditField.Value;
            
        end

        % Button pushed function: EnhanceButton
        function EnhanceButtonPushed(app, event)
            try
                if mod(app.kernelSize,2)==1 
                    app.ConvertToGrayscale();
                    [Row,Col]=size(app.grayImage);
                    app.UIAxes3_8.Position=[1,2,Col,Row];
                    imshow(app.grayImage,'Parent',app.UIAxes3_8);
                    %pad the original image with zeros
                    paddedImage=zeros(Row+(app.kernelSize-1),Col+(app.kernelSize-1));
                    for i=1:Row
                        for j=1:Col
                            paddedImage(i+(app.kernelSize-1)/2,j+(app.kernelSize-1)/2)=app.grayImage(i,j);
                        end
                    end
                    %create the box filter
                    boxFilter=ones(app.kernelSize)/(app.kernelSize*app.kernelSize);
                    for i=1:Row
                        for j=1:Col
                            
                            Output(i,j) = sum(sum(paddedImage(i:i+(app.kernelSize-1),j:j+(app.kernelSize-1)).*boxFilter));
                        end
                    end
%                     app.SpacialLowpassImg=Output;
                    Output=uint8(Output);
                    enhancedImage= (app.grayImage-Output)*app.enhancementFactor+app.grayImage;
                    app.UIAxes3_4.Position=[1,2,Col,Row];
                    imshow(enhancedImage,[],'Parent',app.UIAxes3_4);
                else 
                    uialert(app.UIFigure ,'Please enter odd kernel size and factor greater than 0.','Invalid input');
                end 
            catch
                uialert(app.UIFigure ,'choose a file','Invalid input');
            end
        end

        % Value changed function: FactorEditField_2
        function FactorEditField_2ValueChanged(app, event)
            app.enhancementFactor = app.FactorEditField_2.Value;
            
        end

        % Button pushed function: ShowButton
        function ShowButtonPushed(app, event)
            try
                app.ConvertToGrayscale();
                Row=size(app.grayImage,1);
                Col=size(app.grayImage,2);
                app.UIAxes3_5.Position=[1,3,Col,Row];
                imshow(app.grayImage,[],'Parent',app.UIAxes3_5);
                %get fourier transform of the image
                f1=fft2(app.grayImage);
                %remove range of frequencies
                if app.frequencyFrom <= app.frequencyTo
                  f1(1+app.frequencyFrom:1+app.frequencyTo,1+app.frequencyFrom:1+app.frequencyTo)=0;
                end
                %shift then get the log to use in magnitude
                f2=log(1+fftshift(f1));     
                %get magnitude
                magnitudeImage=abs(f2);
                
                app.UIAxes3_6.Position=[1,3,Col,Row];
                imshow(magnitudeImage,[],'Parent',app.UIAxes3_6);
                %get phase from the fourier transform
                phaseImage=angle(f1);
                app.UIAxes3_7.Position=[1,3,Col,Row];
                imshow(phaseImage,[],'Parent',app.UIAxes3_7);
            catch
                uialert(app.UIFigure ,'choose a file','Invalid input');
           end
        end

        % Button pushed function: EnhanceButton_2
        function EnhanceButton_2Pushed(app, event)
            try
                    app.ConvertToGrayscale();
                    Row=size(app.grayImage,1);
                    Col=size(app.grayImage,2);
                    app.UIAxes3_9.Position=[1,3,Col,Row];
                    imshow(app.grayImage,[],'Parent',app.UIAxes3_9);
                    
                    %check if the image is even if yes make it odd
                    if rem(Col,2)==0
                        img=zeros(Row,Col+1);
                        for i=1:Row
                            for j=1:Col
                                img(i,j)=app.grayImage(i,j);
                            end
                        end
                        app.grayImage=img;
                        Col=Col+1;
                    end
                    if rem(Row,2)==0
                         img=zeros(Row+1,Col);
                        for i=1:Row
                            for j=1:Col
                                img(i,j)=app.grayImage(i,j);
                            end
                        end
                        app.grayImage=img;
                        Row=Row+1;
                    end
                if rem(app.KernelSizeFourier,2) ==1
                    if app.filterButton==app.BoxButton
                        
                        %create box filter
                        kernel=ones(app.KernelSizeFourier)/(app.KernelSizeFourier*app.KernelSizeFourier);
                        %get the filtered image
                        app.SpacialLowpassImg=app.spacialFilter(app.grayImage,kernel);
                        
                        %to filter in frequency we must pad the kernel to be the
                        %same size of the image
                        paddedKernel = zeros(Row,Col);
                        for i=1:app.KernelSizeFourier
                            for j=1:app.KernelSizeFourier
                                paddedKernel(round(i+(Row-app.KernelSizeFourier)/2),round(j+(Col-app.KernelSizeFourier)/2))=kernel(i,j);
                            end
                        end
                        %transform the image and the kernel to frequency domain
                        FourierImage=fft2(app.grayImage);
                        FourierKernel=fft2(paddedKernel);
                        %convolution in time is muliplication in frequency domain
                        filteredImage=FourierImage.*FourierKernel;
                        %reverse the output back to the time domin
                        filteredImage=abs(ifftshift(ifft2(filteredImage)));
                        %get the difference from the outputs of the two filters 
                        output= filteredImage-app.SpacialLowpassImg;
                        app.UIAxes3_10.Position=[1,3,Col,Row];
                        imshow(filteredImage,[],'Parent',app.UIAxes3_10);
                        app.UIAxes3_11.Position=[1,3,Col-app.KernelSizeFourier,Row-app.KernelSizeFourier];
                        imshow(output,[],'Parent',app.UIAxes3_11);
                        
                    else
                        %create the horizontal and the vertical sobel filters
                        vertical= zeros(app.KernelSizeFourier,app.KernelSizeFourier);
                        Horizontal= zeros(app.KernelSizeFourier,app.KernelSizeFourier);
                        %p will be array of indicies of the filter
                        p= [];
                        %append in the p array the [x y] indecies but 
                        %remove the middle element index to keep it 0.  
                        for i=1:app.KernelSizeFourier
                            for j=1:app.KernelSizeFourier
                                if ~(i==round(app.KernelSizeFourier/2) && j==round(app.KernelSizeFourier/2))
                                   p=[p;,[i,j]];
                                end
                            end
                        end
                        %create the sobel horizontal and vertical matrix
                        for k=1:length(p)
                          m= floor(p(k,1) - (app.KernelSizeFourier)/2);
                          n= floor(p(k,2) - (app.KernelSizeFourier)/2);
                      
                           vertical(p(k,1),p(k,2))=n/(m^2+n^2);
                           Horizontal(p(k,1),p(k,2))=m/(m^2+n^2);
                        end
                        %filter in spatial domain
                        filtered1=app.spacialFilter(app.grayImage,Horizontal);
                        filtered2=app.spacialFilter(app.grayImage,vertical);
                        filteredImage=sqrt(filtered1.^2+filtered2.^2);
                        %in the fourier domain
                        %pad the kernel
                        paddedKernelH = zeros(Row,Col);
                        paddedKernelV = zeros(Row,Col);
                        for i=1:app.KernelSizeFourier
                            for j=1:app.KernelSizeFourier
                                paddedKernelH(round(i+(Row-app.KernelSizeFourier)/2),round(j+(Col-app.KernelSizeFourier)/2))=Horizontal(i,j);
                                 paddedKernelV(round(i+(Row-app.KernelSizeFourier)/2),round(j+(Col-app.KernelSizeFourier)/2))=vertical(i,j);
                            end
                        end
                        %transform the kernels and image to freq domain
                       horizontalFourier=fft2(paddedKernelH);
                       verticalFourier=fft2(paddedKernelV);
                       img=fft2(app.grayImage);
                       %convolution in time <--> multiplication in freq
                       %return to the time domain and get the filter
                       filterH=ifftshift(ifft2(horizontalFourier.*img));
                       filterV=ifftshift(ifft2(verticalFourier.*img));
                       filtered=sqrt(filterH.^2+filterV.^2);

                       
                        app.UIAxes3_10.Position=[1,3,Col,Row];
                        imshow(filtered,[],'Parent',app.UIAxes3_10);
                    
                        output=uint8(filtered-filteredImage);
    
                        app.UIAxes3_11.Position=[1,3,Col-app.KernelSizeFourier,Row-app.KernelSizeFourier];
                        imshow(output,[],'Parent',app.UIAxes3_11);
                    end 

                else
                     uialert(app.UIFigure ,'Please enter odd kernel size.','Invalid input');
                end
            
            catch
                uialert(app.UIFigure ,'choose a file','Invalid input');
            end
        end

        % Value changed function: KernelSizeEditField_2
        function KernelSizeEditField_2ValueChanged(app, event)
            app.KernelSizeFourier = app.KernelSizeEditField_2.Value;
        end

        % Selection changed function: FilterTypeButtonGroup
        function FilterTypeButtonGroupSelectionChanged(app, event)
            selectedButton = app.FilterTypeButtonGroup.SelectedObject;
            app.filterButton=selectedButton;
        end

        % Value changed function: FromEditField
        function FromEditFieldValueChanged(app, event)
            value = app.FromEditField.Value;
            app.frequencyFrom=value;
        end

        % Value changed function: ToEditField
        function ToEditFieldValueChanged(app, event)
            value = app.ToEditField.Value;
            app.frequencyTo=value;
        end

        % Button pushed function: CreateImageButton
        function CreateImageButtonPushed(app, event)
            %create image with size 256
            app.phantom=ones(256,256,'uint8')*50;
            %create smaller square 
            app.phantom(50:200,50:200)=150;
          
            %create circle 
            imageSizeX = 256;
            imageSizeY = 256;
            [columnsInImage rowsInImage] = meshgrid(1:imageSizeX, 1:imageSizeY);
            % Next create the circle in the image.
            centerX = 128;
            centerY = 128;
            radius = 50;
            circlePixels = (rowsInImage - centerY).^2+ (columnsInImage - centerX).^2 <= radius.^2;
            % circlePixels is a 2D "logical" array.
            % Now, display it
            app.phantom(circlePixels)=250;
            app.UIAxes5_4.Position=[100,20,256,256];
            imshow(app.phantom,'Parent',app.UIAxes5_4);
            
            app.ApplyButton_2.Visible='on';
            
        end

        % Selection changed function: NoiseTypeButtonGroup
        function NoiseTypeButtonGroupSelectionChanged(app, event)
            selectedButton = app.NoiseTypeButtonGroup.SelectedObject;
            app.noiseType=selectedButton;
        end

        % Button pushed function: ApplyButton_2
        function ApplyButton_2Pushed(app, event)
            if app.noiseType==app.GaussianButton
                %use randn to get random values with normal distribution
                %add noise to the image
                app.noisyImage = uint8(double(app.phantom)+0+floor(randn(256,256)*5));
            elseif app.noiseType==app.UniformButton
                %use rand to get random values with uniform distribution
                a=-10;
                b=10;
                app.noisyImage=uint8(double(app.phantom)+(b-a)*rand(256,256)+a);
            elseif app.noiseType==app.SaltandpepperButton
                app.noisyImage=app.phantom;
                %get random index values
                noise=randi(256,256);
                %threshold the values from the noisy image with indecies of noise 
                app.noisyImage(noise <=4)=0;
                app.noisyImage(noise>=251)=255;
                    
            end

             app.UIAxes5_6.Position=[100,-15,256,256];
             imshow(app.noisyImage,'Parent',app.UIAxes5_6);
             app.ChooseROIButton.Visible='on';
        end

        % Button pushed function: ChooseROIButton
        function ChooseROIButtonPushed(app, event)
            % get the region of interest by drawing a rectangle
            try
                
                roi = drawrectangle(app.UIAxes5_6,'interactionsAllowed','none','Color',[1 0 0]);
                 p=uint8(roi.Position);
                 app.roiImage=uint8(app.noisyImage(p(2):p(2)+p(4),p(1):p(1)+p(3)));
                 imshow(app.roiImage,'Parent',app.UIAxes5_5);
                 
                 %get the histogram of the ROI
                 histImage=zeros(1,256);
                 [Row,Col]=size(app.roiImage); 
                 for i=1:Row
                     for j=1:Col
                         intensity=app.roiImage(i,j);
                         histImage(intensity+1)=histImage(intensity+1)+1;
                     end
                 end
                %get the mean and standerd deviation
                %Mean= (Sum of values)/count
                %variance= E(x^2)-(E(x))^2
                %segma = sqrt(variance)
                sumX=0;
                sumX2=0;
                count=0;
                for i=1:256
                    count=count+histImage(i);
                    sumX=sumX+i*histImage(i);
                    sumX2=sumX2+i^2*histImage(i);
                end
                mean=sumX/count;
                segma=sqrt((sumX2/count)-(sumX/count)^2);
                app.MeanEditField.Value=num2str(mean);
                app.segmaEditField.Value=num2str(segma);
                app.MeanEditField.Visible='on';
                app.segmaEditField.Visible='on';
                app.MeanEditFieldLabel.Visible='on';
                app.segmaEditFieldLabel.Visible='on';
                app.UIAxes6_3.Visible='on';
                bar(histImage,'Parent',app.UIAxes6_3);
                xline(mean,'Parent',app.UIAxes6_3,'Color','r');
                delete(roi);
             catch
                  uialert(app.UIFigure ,'Please draw the rectangle inside the image.','Invalid input');
                  delete(roi);
             end
                 
        end

        % Button pushed function: CreatephantomButton
        function CreatephantomButtonPushed(app, event)
            %create the phantom image with size 256
            app.backProjPhantom=phantom(256);
             app.UIAxes3_12.Position=[1,20,256,256];
            imshow(app.backProjPhantom,'Parent',app.UIAxes3_12);
             app.getsinogramButton.Visible='on';
        end

        % Value changed function: MaxAngleEditField
        function MaxAngleEditFieldValueChanged(app, event)
            value = app.MaxAngleEditField.Value;
            app.maxAngle=value;
        end

        % Value changed function: stepsizeEditField
        function stepsizeEditFieldValueChanged(app, event)
            value = app.stepsizeEditField.Value;
            app.step=value;
        end

        % Button pushed function: getsinogramButton
        function getsinogramButtonPushed(app, event)
            try
            if app.defualtTheta==1
                %the first requirement 
                app.Theta=[0 20 40 60 160];
            else
                %create theta as the user likes
                app.Theta=0:app.step:app.maxAngle;
            end
            %perform radon transform
            [app.sinogram,xp]=radon(app.backProjPhantom,app.Theta);
            imshow(app.sinogram,[], 'Parent', app.UIAxes3_13,'XData', app.Theta,'YData',xp);
            app.getlaminogramButton.Visible='on';
            catch
                
                uialert(app.UIFigure ,'Invalid input','Invalid input');
            end
        end

        % Button pushed function: getlaminogramButton
        function getlaminogramButtonPushed(app, event)
            if app.backProjFilter==app.NoneButton
                %perform back projection and re-construct image
                reconstructionfbp=iradon(app.sinogram,app.Theta,'None');
            elseif app.backProjFilter==app.RamLakButton
                reconstructionfbp=iradon(app.sinogram,app.Theta,'Ram-Lak');
            else
                reconstructionfbp=iradon(app.sinogram,app.Theta,'Hamming');
            end
            imshow(reconstructionfbp,[], 'Parent', app.UIAxes3_14);
        end

        % Selection changed function: FilterTypeButtonGroup_2
        function FilterTypeButtonGroup_2SelectionChanged(app, event)
            selectedButton = app.FilterTypeButtonGroup_2.SelectedObject;
            app.backProjFilter=selectedButton;
        end

        % Value changed function: defualtCheckBox
        function defualtCheckBoxValueChanged(app, event)
            value = app.defualtCheckBox.Value;
            app.defualtTheta=value;
        end

        % Button pushed function: BrowseButton_2
        function BrowseButton_2Pushed(app, event)
            try
               %browse files
               [filename,filepath] = uigetfile({'*.jpeg;*.jpg;*.png;*.bmp;*.dcm;*.tif'}, 'Select File to Open');
               fullname = [filepath, filename];
               [path ,name , format]=fileparts(fullname);
            catch
                %If no files is selected or cancel button pressed
                format='None';
            end
            %check if the select file is a dicom file and accordingly use the appropriate functions
            switch lower(format)
                case { '.jpeg','.jpg','.bmp','.png','.tif'}
%                      try
                        app.varImage = imread(fullname);
                        
                        imag= 0.2989 * app.varImage(:,:,1) + 0.5870 * app.varImage(:,:,2) + 0.1140 * app.varImage(:,:,3);
                        Row=size(imag,1);
                        Col=size(imag,2);
                        %calculate local variance
                        app.LocalVariance(imag);
                        disp(class(app.varImage))
%                         app.varImage=gray2ind(app.varImage);
%                         app.varImage=ind2rgb(app.varImage);
                        app.UIAxes_2.Position=[0,-200,Col,Row];
                        imshow(app.varImage,'parent',app.UIAxes_2);
                        
                        
                          
                        
%                      catch
%                         %handle corrupted files
%                          uialert(app.UIFigure ,'choose a file','File is corrupted');
%                      end
                otherwise
                    %In this case no file is selected 
                    uialert(app.UIFigure ,'choose a file','Invalid input');
                 
            end
            
        end

        % Button pushed function: ChooseROIButton_2
        function ChooseROIButton_2Pushed(app, event)
            roi = drawrectangle(app.UIAxes_2,'interactionsAllowed','none','Color',[1 0 0]);
             p=roi.Position;
             if(p==0)
                 p=1;
             end
             roiImage=app.variance(p(2):p(2)+p(4),p(1):p(1)+p(3));
             roiImage=uint8(255*mat2gray(roiImage));
             colors=jet();
             colors=uint8(255*mat2gray(colors));
             red=colors(:,1);
             green=colors(:,2);
             blue=colors(:,3);
             img=app.varImage;
             app.UIAxes_2.Position=[0,-200,size(img,2),size(img,1)];
             img(p(2):p(2)+p(4),p(1):p(1)+p(3),1)=red(roiImage+1);
             img(p(2):p(2)+p(4),p(1):p(1)+p(3),2)=green(roiImage+1);
             img(p(2):p(2)+p(4),p(1):p(1)+p(3),3)=blue(roiImage+1);
             imshow(img,[],'parent',app.UIAxes_2);

             
             delete(roi);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0 0 0];
            app.UIFigure.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIFigure.Position = [100 100 1216 533];
            app.UIFigure.Name = 'UI Figure';

            % Create UIAxes3_3
            app.UIAxes3_3 = uiaxes(app.UIFigure);
            app.UIAxes3_3.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_3.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_3.Color = [0 0 0];
            app.UIAxes3_3.Position = [1 3 512 399];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 0 1216 534];

            % Create ImageviewerTab
            app.ImageviewerTab = uitab(app.TabGroup);
            app.ImageviewerTab.Title = 'Image viewer';
            app.ImageviewerTab.BackgroundColor = [1 1 1];

            % Create Panel_3
            app.Panel_3 = uipanel(app.ImageviewerTab);
            app.Panel_3.BorderType = 'none';
            app.Panel_3.BackgroundColor = [0 0.451 0.7412];
            app.Panel_3.Position = [0 0 343 510];

            % Create WidthEditFieldLabel
            app.WidthEditFieldLabel = uilabel(app.Panel_3);
            app.WidthEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.WidthEditFieldLabel.VerticalAlignment = 'top';
            app.WidthEditFieldLabel.FontWeight = 'bold';
            app.WidthEditFieldLabel.FontColor = [1 1 1];
            app.WidthEditFieldLabel.Position = [17 482 37 15];
            app.WidthEditFieldLabel.Text = 'Width';

            % Create WidthEditField
            app.WidthEditField = uieditfield(app.Panel_3, 'numeric');
            app.WidthEditField.Editable = 'off';
            app.WidthEditField.HorizontalAlignment = 'left';
            app.WidthEditField.FontColor = [1 1 1];
            app.WidthEditField.BackgroundColor = [0 0.451 0.7412];
            app.WidthEditField.Position = [68 478 100 22];

            % Create HeightEditFieldLabel
            app.HeightEditFieldLabel = uilabel(app.Panel_3);
            app.HeightEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.HeightEditFieldLabel.VerticalAlignment = 'top';
            app.HeightEditFieldLabel.FontWeight = 'bold';
            app.HeightEditFieldLabel.FontColor = [1 1 1];
            app.HeightEditFieldLabel.Position = [183 482 42 15];
            app.HeightEditFieldLabel.Text = 'Height';

            % Create HeightEditField
            app.HeightEditField = uieditfield(app.Panel_3, 'numeric');
            app.HeightEditField.Editable = 'off';
            app.HeightEditField.HorizontalAlignment = 'left';
            app.HeightEditField.FontColor = [1 1 1];
            app.HeightEditField.BackgroundColor = [0 0.451 0.7412];
            app.HeightEditField.Position = [234 478 100 22];

            % Create BitdepthEditFieldLabel
            app.BitdepthEditFieldLabel = uilabel(app.Panel_3);
            app.BitdepthEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.BitdepthEditFieldLabel.VerticalAlignment = 'top';
            app.BitdepthEditFieldLabel.FontWeight = 'bold';
            app.BitdepthEditFieldLabel.FontColor = [1 1 1];
            app.BitdepthEditFieldLabel.Position = [17 448 56 15];
            app.BitdepthEditFieldLabel.Text = 'Bit depth';

            % Create BitdepthEditField
            app.BitdepthEditField = uieditfield(app.Panel_3, 'numeric');
            app.BitdepthEditField.Editable = 'off';
            app.BitdepthEditField.HorizontalAlignment = 'left';
            app.BitdepthEditField.FontColor = [1 1 1];
            app.BitdepthEditField.BackgroundColor = [0 0.451 0.7412];
            app.BitdepthEditField.Position = [68 444 100 22];

            % Create ImagecolorEditFieldLabel
            app.ImagecolorEditFieldLabel = uilabel(app.Panel_3);
            app.ImagecolorEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.ImagecolorEditFieldLabel.VerticalAlignment = 'top';
            app.ImagecolorEditFieldLabel.FontWeight = 'bold';
            app.ImagecolorEditFieldLabel.FontColor = [1 1 1];
            app.ImagecolorEditFieldLabel.Position = [180 446 72 15];
            app.ImagecolorEditFieldLabel.Text = 'Image color';

            % Create ImagecColorEditField
            app.ImagecColorEditField = uieditfield(app.Panel_3, 'text');
            app.ImagecColorEditField.Editable = 'off';
            app.ImagecColorEditField.FontColor = [1 1 1];
            app.ImagecColorEditField.BackgroundColor = [0 0.451 0.7412];
            app.ImagecColorEditField.Position = [264 441 73 22];

            % Create TotalsizeEditField_2Label
            app.TotalsizeEditField_2Label = uilabel(app.Panel_3);
            app.TotalsizeEditField_2Label.BackgroundColor = [0 0.451 0.7412];
            app.TotalsizeEditField_2Label.HorizontalAlignment = 'right';
            app.TotalsizeEditField_2Label.VerticalAlignment = 'top';
            app.TotalsizeEditField_2Label.FontWeight = 'bold';
            app.TotalsizeEditField_2Label.FontColor = [1 1 1];
            app.TotalsizeEditField_2Label.Position = [11 410 59 15];
            app.TotalsizeEditField_2Label.Text = 'Total size';

            % Create TotalsizeEditField
            app.TotalsizeEditField = uieditfield(app.Panel_3, 'text');
            app.TotalsizeEditField.Editable = 'off';
            app.TotalsizeEditField.FontColor = [1 1 1];
            app.TotalsizeEditField.BackgroundColor = [0 0.451 0.7412];
            app.TotalsizeEditField.Position = [85 405 83 22];

            % Create ModalityEditFieldLabel
            app.ModalityEditFieldLabel = uilabel(app.Panel_3);
            app.ModalityEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.ModalityEditFieldLabel.VerticalAlignment = 'top';
            app.ModalityEditFieldLabel.FontWeight = 'bold';
            app.ModalityEditFieldLabel.FontColor = [1 1 1];
            app.ModalityEditFieldLabel.Position = [186 409 53 15];
            app.ModalityEditFieldLabel.Text = 'Modality';

            % Create ModalityEditField
            app.ModalityEditField = uieditfield(app.Panel_3, 'text');
            app.ModalityEditField.Editable = 'off';
            app.ModalityEditField.FontColor = [1 1 1];
            app.ModalityEditField.BackgroundColor = [0 0.451 0.7412];
            app.ModalityEditField.Position = [252 405 85 22];

            % Create PatientNameEditFieldLabel
            app.PatientNameEditFieldLabel = uilabel(app.Panel_3);
            app.PatientNameEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.PatientNameEditFieldLabel.HorizontalAlignment = 'right';
            app.PatientNameEditFieldLabel.VerticalAlignment = 'top';
            app.PatientNameEditFieldLabel.FontWeight = 'bold';
            app.PatientNameEditFieldLabel.FontColor = [1 1 1];
            app.PatientNameEditFieldLabel.Position = [11 368 79 15];
            app.PatientNameEditFieldLabel.Text = 'PatientName';

            % Create PatientNameEditField
            app.PatientNameEditField = uieditfield(app.Panel_3, 'text');
            app.PatientNameEditField.Editable = 'off';
            app.PatientNameEditField.FontColor = [1 1 1];
            app.PatientNameEditField.BackgroundColor = [0 0.451 0.7412];
            app.PatientNameEditField.Position = [105 364 112 22];

            % Create PatientAgeEditFieldLabel
            app.PatientAgeEditFieldLabel = uilabel(app.Panel_3);
            app.PatientAgeEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.PatientAgeEditFieldLabel.HorizontalAlignment = 'right';
            app.PatientAgeEditFieldLabel.VerticalAlignment = 'top';
            app.PatientAgeEditFieldLabel.FontWeight = 'bold';
            app.PatientAgeEditFieldLabel.FontColor = [1 1 1];
            app.PatientAgeEditFieldLabel.Position = [11 327 71 15];
            app.PatientAgeEditFieldLabel.Text = 'Patient Age';

            % Create PatientAgeEditField
            app.PatientAgeEditField = uieditfield(app.Panel_3, 'text');
            app.PatientAgeEditField.Editable = 'off';
            app.PatientAgeEditField.FontColor = [1 1 1];
            app.PatientAgeEditField.BackgroundColor = [0 0.451 0.7412];
            app.PatientAgeEditField.Position = [97 323 100 22];

            % Create BodypartexaminedEditFieldLabel
            app.BodypartexaminedEditFieldLabel = uilabel(app.Panel_3);
            app.BodypartexaminedEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.BodypartexaminedEditFieldLabel.HorizontalAlignment = 'right';
            app.BodypartexaminedEditFieldLabel.VerticalAlignment = 'top';
            app.BodypartexaminedEditFieldLabel.FontWeight = 'bold';
            app.BodypartexaminedEditFieldLabel.FontColor = [1 1 1];
            app.BodypartexaminedEditFieldLabel.Position = [11 286 120 15];
            app.BodypartexaminedEditFieldLabel.Text = 'Body part examined';

            % Create BodyPartExaminedEditField
            app.BodyPartExaminedEditField = uieditfield(app.Panel_3, 'text');
            app.BodyPartExaminedEditField.Editable = 'off';
            app.BodyPartExaminedEditField.FontColor = [1 1 1];
            app.BodyPartExaminedEditField.BackgroundColor = [0 0.451 0.7412];
            app.BodyPartExaminedEditField.Position = [146 282 100 22];

            % Create BrowseButton
            app.BrowseButton = uibutton(app.Panel_3, 'push');
            app.BrowseButton.ButtonPushedFcn = createCallbackFcn(app, @BrowseButtonPushed, true);
            app.BrowseButton.BackgroundColor = [1 1 1];
            app.BrowseButton.FontWeight = 'bold';
            app.BrowseButton.FontColor = [0 0.4471 0.7412];
            app.BrowseButton.Position = [10 11 114 33];
            app.BrowseButton.Text = 'Browse';

            % Create BackgroundLabel
            app.BackgroundLabel = uilabel(app.Panel_3);
            app.BackgroundLabel.HorizontalAlignment = 'center';
            app.BackgroundLabel.FontSize = 20;
            app.BackgroundLabel.FontColor = [0.651 0.651 0.651];
            app.BackgroundLabel.Position = [5 241 334 63];
            app.BackgroundLabel.Text = 'Open a .jpg , .bmp, or .dcm image.';

            % Create Panel_4
            app.Panel_4 = uipanel(app.ImageviewerTab);
            app.Panel_4.BorderType = 'none';
            app.Panel_4.BackgroundColor = [0 0 0];
            app.Panel_4.Position = [342 0 872 510];

            % Create UIAxes
            app.UIAxes = uiaxes(app.Panel_4);
            app.UIAxes.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes.Color = [0 0 0];
            app.UIAxes.Position = [238 61 398 349];

            % Create WhiteimageTab
            app.WhiteimageTab = uitab(app.TabGroup);
            app.WhiteimageTab.Title = 'White image';
            app.WhiteimageTab.BackgroundColor = [0 0 0];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.WhiteimageTab);
            app.UIAxes2.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes2.Color = [0 0 0];
            app.UIAxes2.Position = [542 217 100 100];

            % Create Panel_2
            app.Panel_2 = uipanel(app.WhiteimageTab);
            app.Panel_2.BorderType = 'none';
            app.Panel_2.BackgroundColor = [0 0.451 0.7412];
            app.Panel_2.Position = [1 0 145 510];

            % Create WhiteImageButton
            app.WhiteImageButton = uibutton(app.Panel_2, 'push');
            app.WhiteImageButton.ButtonPushedFcn = createCallbackFcn(app, @WhiteImageButtonPushed, true);
            app.WhiteImageButton.BackgroundColor = [1 1 1];
            app.WhiteImageButton.FontWeight = 'bold';
            app.WhiteImageButton.FontColor = [0 0.4471 0.7412];
            app.WhiteImageButton.Position = [23 323 100 36];
            app.WhiteImageButton.Text = 'White Image';

            % Create ColorPixelsButton
            app.ColorPixelsButton = uibutton(app.Panel_2, 'push');
            app.ColorPixelsButton.ButtonPushedFcn = createCallbackFcn(app, @ColorPixelsButtonPushed, true);
            app.ColorPixelsButton.BackgroundColor = [1 1 1];
            app.ColorPixelsButton.FontWeight = 'bold';
            app.ColorPixelsButton.FontColor = [0 0.4471 0.7412];
            app.ColorPixelsButton.Position = [23 179 100 36];
            app.ColorPixelsButton.Text = 'Color Pixels';

            % Create ZoomTab
            app.ZoomTab = uitab(app.TabGroup);
            app.ZoomTab.Title = 'Zoom';
            app.ZoomTab.BackgroundColor = [0 0 0];

            % Create Panel
            app.Panel = uipanel(app.ZoomTab);
            app.Panel.BorderType = 'none';
            app.Panel.BackgroundColor = [0 0.451 0.7412];
            app.Panel.Position = [1 1 145 509];

            % Create FactorEditFieldLabel
            app.FactorEditFieldLabel = uilabel(app.Panel);
            app.FactorEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.FactorEditFieldLabel.VerticalAlignment = 'top';
            app.FactorEditFieldLabel.FontColor = [1 1 1];
            app.FactorEditFieldLabel.Position = [9 375 42 15];
            app.FactorEditFieldLabel.Text = 'Factor:';

            % Create FactorEditField
            app.FactorEditField = uieditfield(app.Panel, 'numeric');
            app.FactorEditField.Limits = [0.01 10];
            app.FactorEditField.ValueChangedFcn = createCallbackFcn(app, @FactorEditFieldValueChanged, true);
            app.FactorEditField.HorizontalAlignment = 'left';
            app.FactorEditField.FontColor = [1 1 1];
            app.FactorEditField.BackgroundColor = [0 0.451 0.7412];
            app.FactorEditField.Position = [66 371 60 22];
            app.FactorEditField.Value = 1;

            % Create ApplyButton
            app.ApplyButton = uibutton(app.Panel, 'push');
            app.ApplyButton.ButtonPushedFcn = createCallbackFcn(app, @ApplyButtonPushed, true);
            app.ApplyButton.BackgroundColor = [1 1 1];
            app.ApplyButton.FontWeight = 'bold';
            app.ApplyButton.FontColor = [0 0.4471 0.7412];
            app.ApplyButton.Position = [20 142 100 46];
            app.ApplyButton.Text = 'Apply';

            % Create NearestneighborinterpolationPanel
            app.NearestneighborinterpolationPanel = uipanel(app.ZoomTab);
            app.NearestneighborinterpolationPanel.ForegroundColor = [1 1 1];
            app.NearestneighborinterpolationPanel.BorderType = 'none';
            app.NearestneighborinterpolationPanel.TitlePosition = 'centertop';
            app.NearestneighborinterpolationPanel.Title = 'Nearest-neighbor interpolation';
            app.NearestneighborinterpolationPanel.BackgroundColor = [0 0 0];
            app.NearestneighborinterpolationPanel.FontWeight = 'bold';
            app.NearestneighborinterpolationPanel.Scrollable = 'on';
            app.NearestneighborinterpolationPanel.FontSize = 14;
            app.NearestneighborinterpolationPanel.Position = [146 1 535 509];

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.NearestneighborinterpolationPanel);
            app.UIAxes3.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3.Color = [0 0 0];
            app.UIAxes3.Position = [1 3 512 399];

            % Create BilinearinterpolationPanel
            app.BilinearinterpolationPanel = uipanel(app.ZoomTab);
            app.BilinearinterpolationPanel.ForegroundColor = [1 1 1];
            app.BilinearinterpolationPanel.BorderType = 'none';
            app.BilinearinterpolationPanel.TitlePosition = 'centertop';
            app.BilinearinterpolationPanel.Title = 'Bilinear interpolation';
            app.BilinearinterpolationPanel.BackgroundColor = [0 0 0];
            app.BilinearinterpolationPanel.FontWeight = 'bold';
            app.BilinearinterpolationPanel.Scrollable = 'on';
            app.BilinearinterpolationPanel.FontSize = 14;
            app.BilinearinterpolationPanel.Position = [680 1 535 509];

            % Create UIAxes3_2
            app.UIAxes3_2 = uiaxes(app.BilinearinterpolationPanel);
            app.UIAxes3_2.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_2.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_2.Color = [0 0 0];
            app.UIAxes3_2.Position = [1 3 512 423];

            % Create HistogramTab_2
            app.HistogramTab_2 = uitab(app.TabGroup);
            app.HistogramTab_2.Title = 'Histogram';
            app.HistogramTab_2.BackgroundColor = [0 0 0];

            % Create Panel_9
            app.Panel_9 = uipanel(app.HistogramTab_2);
            app.Panel_9.BorderType = 'none';
            app.Panel_9.BackgroundColor = [0 0.451 0.7412];
            app.Panel_9.Position = [1 0 145 510];

            % Create ShowHistogramButton
            app.ShowHistogramButton = uibutton(app.Panel_9, 'push');
            app.ShowHistogramButton.ButtonPushedFcn = createCallbackFcn(app, @ShowHistogramButtonPushed, true);
            app.ShowHistogramButton.BackgroundColor = [1 1 1];
            app.ShowHistogramButton.FontWeight = 'bold';
            app.ShowHistogramButton.FontColor = [0 0.4471 0.7412];
            app.ShowHistogramButton.Position = [20 352 110 46];
            app.ShowHistogramButton.Text = 'Show Histogram';

            % Create EqualizeandShowButton
            app.EqualizeandShowButton = uibutton(app.Panel_9, 'push');
            app.EqualizeandShowButton.ButtonPushedFcn = createCallbackFcn(app, @EqualizeandShowButtonPushed, true);
            app.EqualizeandShowButton.BackgroundColor = [1 1 1];
            app.EqualizeandShowButton.FontWeight = 'bold';
            app.EqualizeandShowButton.FontColor = [0 0.4471 0.7412];
            app.EqualizeandShowButton.Position = [12 150 124 46];
            app.EqualizeandShowButton.Text = 'Equalize and Show';

            % Create OriginalImagePanel
            app.OriginalImagePanel = uipanel(app.HistogramTab_2);
            app.OriginalImagePanel.ForegroundColor = [1 1 1];
            app.OriginalImagePanel.BorderType = 'none';
            app.OriginalImagePanel.TitlePosition = 'centertop';
            app.OriginalImagePanel.Title = 'Original Image';
            app.OriginalImagePanel.BackgroundColor = [0 0 0];
            app.OriginalImagePanel.FontWeight = 'bold';
            app.OriginalImagePanel.Scrollable = 'on';
            app.OriginalImagePanel.Position = [146 256 535 254];

            % Create UIAxes5_3
            app.UIAxes5_3 = uiaxes(app.OriginalImagePanel);
            app.UIAxes5_3.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes5_3.Color = [0 0 0];
            app.UIAxes5_3.Position = [92 20 300 185];

            % Create EqualizedImagePanel
            app.EqualizedImagePanel = uipanel(app.HistogramTab_2);
            app.EqualizedImagePanel.ForegroundColor = [1 1 1];
            app.EqualizedImagePanel.BorderType = 'none';
            app.EqualizedImagePanel.TitlePosition = 'centertop';
            app.EqualizedImagePanel.Title = 'Equalized Image';
            app.EqualizedImagePanel.BackgroundColor = [0 0 0];
            app.EqualizedImagePanel.FontWeight = 'bold';
            app.EqualizedImagePanel.Scrollable = 'on';
            app.EqualizedImagePanel.Position = [147 3 535 254];

            % Create UIAxes5_2
            app.UIAxes5_2 = uiaxes(app.EqualizedImagePanel);
            app.UIAxes5_2.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes5_2.Color = [0 0 0];
            app.UIAxes5_2.Position = [91 31 300 185];

            % Create NormalizedHistogramoforiginalimagePanel
            app.NormalizedHistogramoforiginalimagePanel = uipanel(app.HistogramTab_2);
            app.NormalizedHistogramoforiginalimagePanel.ForegroundColor = [1 1 1];
            app.NormalizedHistogramoforiginalimagePanel.BorderType = 'none';
            app.NormalizedHistogramoforiginalimagePanel.TitlePosition = 'centertop';
            app.NormalizedHistogramoforiginalimagePanel.Title = 'Normalized Histogram of original image';
            app.NormalizedHistogramoforiginalimagePanel.BackgroundColor = [0 0 0];
            app.NormalizedHistogramoforiginalimagePanel.FontWeight = 'bold';
            app.NormalizedHistogramoforiginalimagePanel.Scrollable = 'on';
            app.NormalizedHistogramoforiginalimagePanel.Position = [680 256 535 254];

            % Create UIAxes4_2
            app.UIAxes4_2 = uiaxes(app.NormalizedHistogramoforiginalimagePanel);
            app.UIAxes4_2.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes4_2.XColor = [1 1 1];
            app.UIAxes4_2.YColor = [1 1 1];
            app.UIAxes4_2.Position = [1 2 534 225];

            % Create NormalizedHistogramofEqualizedImagePanel
            app.NormalizedHistogramofEqualizedImagePanel = uipanel(app.HistogramTab_2);
            app.NormalizedHistogramofEqualizedImagePanel.ForegroundColor = [1 1 1];
            app.NormalizedHistogramofEqualizedImagePanel.BorderType = 'none';
            app.NormalizedHistogramofEqualizedImagePanel.TitlePosition = 'centertop';
            app.NormalizedHistogramofEqualizedImagePanel.Title = 'Normalized Histogram of Equalized Image';
            app.NormalizedHistogramofEqualizedImagePanel.BackgroundColor = [0 0 0];
            app.NormalizedHistogramofEqualizedImagePanel.FontWeight = 'bold';
            app.NormalizedHistogramofEqualizedImagePanel.Scrollable = 'on';
            app.NormalizedHistogramofEqualizedImagePanel.Position = [681 3 533 254];

            % Create UIAxes6_2
            app.UIAxes6_2 = uiaxes(app.NormalizedHistogramofEqualizedImagePanel);
            app.UIAxes6_2.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes6_2.XColor = [1 1 1];
            app.UIAxes6_2.YColor = [1 1 1];
            app.UIAxes6_2.GridColor = [0 0 0];
            app.UIAxes6_2.Position = [1 8 533 222];

            % Create SpatialFilteringTab
            app.SpatialFilteringTab = uitab(app.TabGroup);
            app.SpatialFilteringTab.Title = 'Spatial Filtering';

            % Create Panel_10
            app.Panel_10 = uipanel(app.SpatialFilteringTab);
            app.Panel_10.BorderType = 'none';
            app.Panel_10.BackgroundColor = [0 0.451 0.7412];
            app.Panel_10.Position = [1 0 145 510];

            % Create KernelSizeLabel
            app.KernelSizeLabel = uilabel(app.Panel_10);
            app.KernelSizeLabel.BackgroundColor = [0 0.451 0.7412];
            app.KernelSizeLabel.VerticalAlignment = 'top';
            app.KernelSizeLabel.FontColor = [1 1 1];
            app.KernelSizeLabel.Position = [9 369 70 22];
            app.KernelSizeLabel.Text = 'Kernel Size:';

            % Create KernelSizeEditField
            app.KernelSizeEditField = uieditfield(app.Panel_10, 'numeric');
            app.KernelSizeEditField.Limits = [0.01 Inf];
            app.KernelSizeEditField.ValueChangedFcn = createCallbackFcn(app, @KernelSizeEditFieldValueChanged, true);
            app.KernelSizeEditField.HorizontalAlignment = 'left';
            app.KernelSizeEditField.FontColor = [1 1 1];
            app.KernelSizeEditField.BackgroundColor = [0 0.451 0.7412];
            app.KernelSizeEditField.Position = [80 372 56 22];
            app.KernelSizeEditField.Value = 1;

            % Create EnhanceButton
            app.EnhanceButton = uibutton(app.Panel_10, 'push');
            app.EnhanceButton.ButtonPushedFcn = createCallbackFcn(app, @EnhanceButtonPushed, true);
            app.EnhanceButton.BackgroundColor = [1 1 1];
            app.EnhanceButton.FontWeight = 'bold';
            app.EnhanceButton.FontColor = [0 0.4471 0.7412];
            app.EnhanceButton.Position = [20 143 100 46];
            app.EnhanceButton.Text = 'Enhance';

            % Create FactorEditField_2Label
            app.FactorEditField_2Label = uilabel(app.Panel_10);
            app.FactorEditField_2Label.BackgroundColor = [0 0.451 0.7412];
            app.FactorEditField_2Label.VerticalAlignment = 'top';
            app.FactorEditField_2Label.FontColor = [1 1 1];
            app.FactorEditField_2Label.Position = [9 322 43 22];
            app.FactorEditField_2Label.Text = 'Factor:';

            % Create FactorEditField_2
            app.FactorEditField_2 = uieditfield(app.Panel_10, 'numeric');
            app.FactorEditField_2.ValueChangedFcn = createCallbackFcn(app, @FactorEditField_2ValueChanged, true);
            app.FactorEditField_2.HorizontalAlignment = 'left';
            app.FactorEditField_2.FontColor = [1 1 1];
            app.FactorEditField_2.BackgroundColor = [0 0.451 0.7412];
            app.FactorEditField_2.Position = [80 325 56 22];
            app.FactorEditField_2.Value = 1;

            % Create OriginalImagePanel_2
            app.OriginalImagePanel_2 = uipanel(app.SpatialFilteringTab);
            app.OriginalImagePanel_2.ForegroundColor = [1 1 1];
            app.OriginalImagePanel_2.BorderType = 'none';
            app.OriginalImagePanel_2.TitlePosition = 'centertop';
            app.OriginalImagePanel_2.Title = 'Original Image';
            app.OriginalImagePanel_2.BackgroundColor = [0 0 0];
            app.OriginalImagePanel_2.FontWeight = 'bold';
            app.OriginalImagePanel_2.Scrollable = 'on';
            app.OriginalImagePanel_2.FontSize = 14;
            app.OriginalImagePanel_2.Position = [146 1 535 509];

            % Create UIAxes3_8
            app.UIAxes3_8 = uiaxes(app.OriginalImagePanel_2);
            app.UIAxes3_8.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_8.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_8.Color = [0 0 0];
            app.UIAxes3_8.Position = [13 1 512 423];

            % Create FilteredImagePanel
            app.FilteredImagePanel = uipanel(app.SpatialFilteringTab);
            app.FilteredImagePanel.ForegroundColor = [1 1 1];
            app.FilteredImagePanel.BorderType = 'none';
            app.FilteredImagePanel.TitlePosition = 'centertop';
            app.FilteredImagePanel.Title = 'Filtered Image';
            app.FilteredImagePanel.BackgroundColor = [0 0 0];
            app.FilteredImagePanel.FontWeight = 'bold';
            app.FilteredImagePanel.Scrollable = 'on';
            app.FilteredImagePanel.FontSize = 14;
            app.FilteredImagePanel.Position = [680 1 535 509];

            % Create UIAxes3_4
            app.UIAxes3_4 = uiaxes(app.FilteredImagePanel);
            app.UIAxes3_4.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_4.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_4.Color = [0 0 0];
            app.UIAxes3_4.Position = [1 3 512 423];

            % Create FourierTab
            app.FourierTab = uitab(app.TabGroup);
            app.FourierTab.Title = 'Fourier';

            % Create Panel_11
            app.Panel_11 = uipanel(app.FourierTab);
            app.Panel_11.BorderType = 'none';
            app.Panel_11.BackgroundColor = [0 0.451 0.7412];
            app.Panel_11.Position = [1 1 145 509];

            % Create ShowButton
            app.ShowButton = uibutton(app.Panel_11, 'push');
            app.ShowButton.ButtonPushedFcn = createCallbackFcn(app, @ShowButtonPushed, true);
            app.ShowButton.BackgroundColor = [1 1 1];
            app.ShowButton.FontWeight = 'bold';
            app.ShowButton.FontColor = [0 0.4471 0.7412];
            app.ShowButton.Position = [23 237 100 36];
            app.ShowButton.Text = 'Show';

            % Create FromEditFieldLabel
            app.FromEditFieldLabel = uilabel(app.Panel_11);
            app.FromEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.FromEditFieldLabel.VerticalAlignment = 'top';
            app.FromEditFieldLabel.FontColor = [1 1 1];
            app.FromEditFieldLabel.Position = [8 351 33 22];
            app.FromEditFieldLabel.Text = 'From';

            % Create FromEditField
            app.FromEditField = uieditfield(app.Panel_11, 'numeric');
            app.FromEditField.Limits = [0 Inf];
            app.FromEditField.ValueChangedFcn = createCallbackFcn(app, @FromEditFieldValueChanged, true);
            app.FromEditField.HorizontalAlignment = 'left';
            app.FromEditField.FontColor = [1 1 1];
            app.FromEditField.BackgroundColor = [0 0.451 0.7412];
            app.FromEditField.Position = [79 354 56 22];

            % Create RemoveFrequencyLabel
            app.RemoveFrequencyLabel = uilabel(app.Panel_11);
            app.RemoveFrequencyLabel.HorizontalAlignment = 'center';
            app.RemoveFrequencyLabel.FontWeight = 'bold';
            app.RemoveFrequencyLabel.FontColor = [1 1 1];
            app.RemoveFrequencyLabel.Position = [10 404 120 22];
            app.RemoveFrequencyLabel.Text = 'Remove Frequency ';

            % Create ToEditFieldLabel
            app.ToEditFieldLabel = uilabel(app.Panel_11);
            app.ToEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.ToEditFieldLabel.VerticalAlignment = 'top';
            app.ToEditFieldLabel.FontColor = [1 1 1];
            app.ToEditFieldLabel.Position = [9 312 25 22];
            app.ToEditFieldLabel.Text = 'To';

            % Create ToEditField
            app.ToEditField = uieditfield(app.Panel_11, 'numeric');
            app.ToEditField.Limits = [0 Inf];
            app.ToEditField.ValueChangedFcn = createCallbackFcn(app, @ToEditFieldValueChanged, true);
            app.ToEditField.HorizontalAlignment = 'left';
            app.ToEditField.FontColor = [1 1 1];
            app.ToEditField.BackgroundColor = [0 0.451 0.7412];
            app.ToEditField.Position = [80 315 56 22];

            % Create OriginalImagePanel_3
            app.OriginalImagePanel_3 = uipanel(app.FourierTab);
            app.OriginalImagePanel_3.ForegroundColor = [1 1 1];
            app.OriginalImagePanel_3.BorderType = 'none';
            app.OriginalImagePanel_3.TitlePosition = 'centertop';
            app.OriginalImagePanel_3.Title = 'Original Image';
            app.OriginalImagePanel_3.BackgroundColor = [0 0 0];
            app.OriginalImagePanel_3.FontWeight = 'bold';
            app.OriginalImagePanel_3.Scrollable = 'on';
            app.OriginalImagePanel_3.FontSize = 14;
            app.OriginalImagePanel_3.Position = [146 0 365 509];

            % Create UIAxes3_5
            app.UIAxes3_5 = uiaxes(app.OriginalImagePanel_3);
            app.UIAxes3_5.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_5.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_5.Color = [0 0 0];
            app.UIAxes3_5.Position = [1 3 306 399];

            % Create PhasePanel
            app.PhasePanel = uipanel(app.FourierTab);
            app.PhasePanel.ForegroundColor = [1 1 1];
            app.PhasePanel.BorderType = 'none';
            app.PhasePanel.TitlePosition = 'centertop';
            app.PhasePanel.Title = 'Phase';
            app.PhasePanel.BackgroundColor = [0 0 0];
            app.PhasePanel.FontWeight = 'bold';
            app.PhasePanel.Scrollable = 'on';
            app.PhasePanel.FontSize = 14;
            app.PhasePanel.Position = [862 0 352 509];

            % Create UIAxes3_7
            app.UIAxes3_7 = uiaxes(app.PhasePanel);
            app.UIAxes3_7.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_7.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_7.Color = [0 0 0];
            app.UIAxes3_7.Position = [1 3 306 399];

            % Create MagnitudePanel
            app.MagnitudePanel = uipanel(app.FourierTab);
            app.MagnitudePanel.ForegroundColor = [1 1 1];
            app.MagnitudePanel.BorderType = 'none';
            app.MagnitudePanel.TitlePosition = 'centertop';
            app.MagnitudePanel.Title = 'Magnitude';
            app.MagnitudePanel.BackgroundColor = [0 0 0];
            app.MagnitudePanel.FontWeight = 'bold';
            app.MagnitudePanel.Scrollable = 'on';
            app.MagnitudePanel.FontSize = 14;
            app.MagnitudePanel.Position = [510 0 353 509];

            % Create UIAxes3_6
            app.UIAxes3_6 = uiaxes(app.MagnitudePanel);
            app.UIAxes3_6.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_6.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_6.Color = [0 0 0];
            app.UIAxes3_6.Position = [1 3 306 399];

            % Create FourierfilterTab
            app.FourierfilterTab = uitab(app.TabGroup);
            app.FourierfilterTab.Title = 'Fourier filter';

            % Create OriginalImagePanel_4
            app.OriginalImagePanel_4 = uipanel(app.FourierfilterTab);
            app.OriginalImagePanel_4.ForegroundColor = [1 1 1];
            app.OriginalImagePanel_4.BorderType = 'none';
            app.OriginalImagePanel_4.TitlePosition = 'centertop';
            app.OriginalImagePanel_4.Title = 'Original Image';
            app.OriginalImagePanel_4.BackgroundColor = [0 0 0];
            app.OriginalImagePanel_4.FontWeight = 'bold';
            app.OriginalImagePanel_4.Scrollable = 'on';
            app.OriginalImagePanel_4.FontSize = 14;
            app.OriginalImagePanel_4.Position = [146 1 365 508];

            % Create UIAxes3_9
            app.UIAxes3_9 = uiaxes(app.OriginalImagePanel_4);
            app.UIAxes3_9.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_9.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_9.Color = [0 0 0];
            app.UIAxes3_9.Position = [1 2 306 399];

            % Create FourierfilteredImagePanel
            app.FourierfilteredImagePanel = uipanel(app.FourierfilterTab);
            app.FourierfilteredImagePanel.ForegroundColor = [1 1 1];
            app.FourierfilteredImagePanel.BorderType = 'none';
            app.FourierfilteredImagePanel.TitlePosition = 'centertop';
            app.FourierfilteredImagePanel.Title = 'Fourier filtered Image';
            app.FourierfilteredImagePanel.BackgroundColor = [0 0 0];
            app.FourierfilteredImagePanel.FontWeight = 'bold';
            app.FourierfilteredImagePanel.Scrollable = 'on';
            app.FourierfilteredImagePanel.FontSize = 14;
            app.FourierfilteredImagePanel.Position = [510 0 353 509];

            % Create UIAxes3_10
            app.UIAxes3_10 = uiaxes(app.FourierfilteredImagePanel);
            app.UIAxes3_10.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_10.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_10.Color = [0 0 0];
            app.UIAxes3_10.Position = [1 4 306 398];

            % Create DifferencePanel
            app.DifferencePanel = uipanel(app.FourierfilterTab);
            app.DifferencePanel.ForegroundColor = [1 1 1];
            app.DifferencePanel.BorderType = 'none';
            app.DifferencePanel.TitlePosition = 'centertop';
            app.DifferencePanel.Title = 'Difference';
            app.DifferencePanel.BackgroundColor = [0 0 0];
            app.DifferencePanel.FontWeight = 'bold';
            app.DifferencePanel.Scrollable = 'on';
            app.DifferencePanel.FontSize = 14;
            app.DifferencePanel.Position = [862 0 352 509];

            % Create UIAxes3_11
            app.UIAxes3_11 = uiaxes(app.DifferencePanel);
            app.UIAxes3_11.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_11.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_11.Color = [0 0 0];
            app.UIAxes3_11.Position = [1 3 306 399];

            % Create Panel_12
            app.Panel_12 = uipanel(app.FourierfilterTab);
            app.Panel_12.BorderType = 'none';
            app.Panel_12.BackgroundColor = [0 0.451 0.7412];
            app.Panel_12.Position = [1 2 145 508];

            % Create KernelSizeEditField_2Label
            app.KernelSizeEditField_2Label = uilabel(app.Panel_12);
            app.KernelSizeEditField_2Label.BackgroundColor = [0 0.451 0.7412];
            app.KernelSizeEditField_2Label.VerticalAlignment = 'top';
            app.KernelSizeEditField_2Label.FontColor = [1 1 1];
            app.KernelSizeEditField_2Label.Position = [9 367 70 22];
            app.KernelSizeEditField_2Label.Text = 'Kernel Size:';

            % Create KernelSizeEditField_2
            app.KernelSizeEditField_2 = uieditfield(app.Panel_12, 'numeric');
            app.KernelSizeEditField_2.Limits = [0.01 Inf];
            app.KernelSizeEditField_2.ValueChangedFcn = createCallbackFcn(app, @KernelSizeEditField_2ValueChanged, true);
            app.KernelSizeEditField_2.HorizontalAlignment = 'left';
            app.KernelSizeEditField_2.FontColor = [1 1 1];
            app.KernelSizeEditField_2.BackgroundColor = [0 0.451 0.7412];
            app.KernelSizeEditField_2.Position = [80 370 56 22];
            app.KernelSizeEditField_2.Value = 1;

            % Create EnhanceButton_2
            app.EnhanceButton_2 = uibutton(app.Panel_12, 'push');
            app.EnhanceButton_2.ButtonPushedFcn = createCallbackFcn(app, @EnhanceButton_2Pushed, true);
            app.EnhanceButton_2.BackgroundColor = [1 1 1];
            app.EnhanceButton_2.FontWeight = 'bold';
            app.EnhanceButton_2.FontColor = [0 0.4471 0.7412];
            app.EnhanceButton_2.Position = [20 141 100 46];
            app.EnhanceButton_2.Text = 'Enhance';

            % Create FilterTypeButtonGroup
            app.FilterTypeButtonGroup = uibuttongroup(app.Panel_12);
            app.FilterTypeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @FilterTypeButtonGroupSelectionChanged, true);
            app.FilterTypeButtonGroup.ForegroundColor = [1 1 1];
            app.FilterTypeButtonGroup.BorderType = 'none';
            app.FilterTypeButtonGroup.TitlePosition = 'centertop';
            app.FilterTypeButtonGroup.Title = 'Filter Type';
            app.FilterTypeButtonGroup.BackgroundColor = [0 0.4471 0.7412];
            app.FilterTypeButtonGroup.FontWeight = 'bold';
            app.FilterTypeButtonGroup.Position = [12 230 123 106];

            % Create BoxButton
            app.BoxButton = uitogglebutton(app.FilterTypeButtonGroup);
            app.BoxButton.Text = 'Box';
            app.BoxButton.BackgroundColor = [0.8 0.8 0.8];
            app.BoxButton.FontColor = [1 1 1];
            app.BoxButton.Position = [11 49 100 22];
            app.BoxButton.Value = true;

            % Create SobelButton
            app.SobelButton = uitogglebutton(app.FilterTypeButtonGroup);
            app.SobelButton.Text = 'Sobel';
            app.SobelButton.BackgroundColor = [0.651 0.651 0.651];
            app.SobelButton.FontColor = [1 1 1];
            app.SobelButton.Position = [11 12 100 22];

            % Create NoiseTab
            app.NoiseTab = uitab(app.TabGroup);
            app.NoiseTab.Title = 'Noise';
            app.NoiseTab.BackgroundColor = [0 0 0];

            % Create Panel_13
            app.Panel_13 = uipanel(app.NoiseTab);
            app.Panel_13.BorderType = 'none';
            app.Panel_13.BackgroundColor = [0 0.451 0.7412];
            app.Panel_13.Position = [1 0 145 510];

            % Create ApplyButton_2
            app.ApplyButton_2 = uibutton(app.Panel_13, 'push');
            app.ApplyButton_2.ButtonPushedFcn = createCallbackFcn(app, @ApplyButton_2Pushed, true);
            app.ApplyButton_2.BackgroundColor = [1 1 1];
            app.ApplyButton_2.FontWeight = 'bold';
            app.ApplyButton_2.FontColor = [0 0.4471 0.7412];
            app.ApplyButton_2.Position = [23 174 100 46];
            app.ApplyButton_2.Text = 'Apply';

            % Create NoiseTypeButtonGroup
            app.NoiseTypeButtonGroup = uibuttongroup(app.Panel_13);
            app.NoiseTypeButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @NoiseTypeButtonGroupSelectionChanged, true);
            app.NoiseTypeButtonGroup.ForegroundColor = [1 1 1];
            app.NoiseTypeButtonGroup.BorderType = 'none';
            app.NoiseTypeButtonGroup.TitlePosition = 'centertop';
            app.NoiseTypeButtonGroup.Title = 'Noise Type';
            app.NoiseTypeButtonGroup.BackgroundColor = [0 0.4471 0.7412];
            app.NoiseTypeButtonGroup.FontWeight = 'bold';
            app.NoiseTypeButtonGroup.Position = [12 257 123 129];

            % Create GaussianButton
            app.GaussianButton = uitogglebutton(app.NoiseTypeButtonGroup);
            app.GaussianButton.Text = 'Gaussian';
            app.GaussianButton.BackgroundColor = [0.8 0.8 0.8];
            app.GaussianButton.FontColor = [1 1 1];
            app.GaussianButton.Position = [11 72 100 22];
            app.GaussianButton.Value = true;

            % Create UniformButton
            app.UniformButton = uitogglebutton(app.NoiseTypeButtonGroup);
            app.UniformButton.Text = 'Uniform';
            app.UniformButton.BackgroundColor = [0.651 0.651 0.651];
            app.UniformButton.FontColor = [1 1 1];
            app.UniformButton.Position = [11 40 100 22];

            % Create SaltandpepperButton
            app.SaltandpepperButton = uitogglebutton(app.NoiseTypeButtonGroup);
            app.SaltandpepperButton.Text = 'Salt and pepper';
            app.SaltandpepperButton.BackgroundColor = [0.651 0.651 0.651];
            app.SaltandpepperButton.FontColor = [1 1 1];
            app.SaltandpepperButton.Position = [11 8 100 22];

            % Create CreateImageButton
            app.CreateImageButton = uibutton(app.Panel_13, 'push');
            app.CreateImageButton.ButtonPushedFcn = createCallbackFcn(app, @CreateImageButtonPushed, true);
            app.CreateImageButton.BackgroundColor = [1 1 1];
            app.CreateImageButton.FontWeight = 'bold';
            app.CreateImageButton.FontColor = [0 0.4471 0.7412];
            app.CreateImageButton.Position = [23 421 100 46];
            app.CreateImageButton.Text = 'Create Image';

            % Create ChooseROIButton
            app.ChooseROIButton = uibutton(app.Panel_13, 'push');
            app.ChooseROIButton.ButtonPushedFcn = createCallbackFcn(app, @ChooseROIButtonPushed, true);
            app.ChooseROIButton.BackgroundColor = [1 1 1];
            app.ChooseROIButton.FontWeight = 'bold';
            app.ChooseROIButton.FontColor = [0 0.4471 0.7412];
            app.ChooseROIButton.Position = [23 108 100 46];
            app.ChooseROIButton.Text = 'Choose ROI';

            % Create MeanEditFieldLabel
            app.MeanEditFieldLabel = uilabel(app.Panel_13);
            app.MeanEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.MeanEditFieldLabel.VerticalAlignment = 'top';
            app.MeanEditFieldLabel.FontWeight = 'bold';
            app.MeanEditFieldLabel.FontColor = [1 1 1];
            app.MeanEditFieldLabel.Position = [6 67 59 22];
            app.MeanEditFieldLabel.Text = 'Mean';

            % Create MeanEditField
            app.MeanEditField = uieditfield(app.Panel_13, 'text');
            app.MeanEditField.Editable = 'off';
            app.MeanEditField.FontColor = [1 1 1];
            app.MeanEditField.BackgroundColor = [0 0.451 0.7412];
            app.MeanEditField.Position = [52 69 89 22];

            % Create segmaEditFieldLabel
            app.segmaEditFieldLabel = uilabel(app.Panel_13);
            app.segmaEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.segmaEditFieldLabel.VerticalAlignment = 'top';
            app.segmaEditFieldLabel.FontWeight = 'bold';
            app.segmaEditFieldLabel.FontColor = [1 1 1];
            app.segmaEditFieldLabel.Position = [5 37 44 22];
            app.segmaEditFieldLabel.Text = 'segma';

            % Create segmaEditField
            app.segmaEditField = uieditfield(app.Panel_13, 'text');
            app.segmaEditField.Editable = 'off';
            app.segmaEditField.FontColor = [1 1 1];
            app.segmaEditField.BackgroundColor = [0 0.451 0.7412];
            app.segmaEditField.Position = [51 39 89 22];

            % Create OriginalImagePanel_5
            app.OriginalImagePanel_5 = uipanel(app.NoiseTab);
            app.OriginalImagePanel_5.ForegroundColor = [1 1 1];
            app.OriginalImagePanel_5.BorderType = 'none';
            app.OriginalImagePanel_5.TitlePosition = 'centertop';
            app.OriginalImagePanel_5.Title = 'Original Image';
            app.OriginalImagePanel_5.BackgroundColor = [0 0 0];
            app.OriginalImagePanel_5.FontWeight = 'bold';
            app.OriginalImagePanel_5.Scrollable = 'on';
            app.OriginalImagePanel_5.Position = [146 256 535 254];

            % Create UIAxes5_4
            app.UIAxes5_4 = uiaxes(app.OriginalImagePanel_5);
            app.UIAxes5_4.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes5_4.Color = [0 0 0];
            app.UIAxes5_4.Position = [92 20 300 185];

            % Create NoisyImagePanel
            app.NoisyImagePanel = uipanel(app.NoiseTab);
            app.NoisyImagePanel.ForegroundColor = [1 1 1];
            app.NoisyImagePanel.BorderType = 'none';
            app.NoisyImagePanel.TitlePosition = 'centertop';
            app.NoisyImagePanel.Title = 'Noisy Image';
            app.NoisyImagePanel.BackgroundColor = [0 0 0];
            app.NoisyImagePanel.FontWeight = 'bold';
            app.NoisyImagePanel.Scrollable = 'on';
            app.NoisyImagePanel.Position = [680 256 534 254];

            % Create UIAxes5_6
            app.UIAxes5_6 = uiaxes(app.NoisyImagePanel);
            app.UIAxes5_6.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes5_6.Color = [0 0 0];
            app.UIAxes5_6.Position = [147 -1 300 185];

            % Create ROIPanel
            app.ROIPanel = uipanel(app.NoiseTab);
            app.ROIPanel.ForegroundColor = [1 1 1];
            app.ROIPanel.BorderType = 'none';
            app.ROIPanel.TitlePosition = 'centertop';
            app.ROIPanel.Title = 'ROI';
            app.ROIPanel.BackgroundColor = [0 0 0];
            app.ROIPanel.FontWeight = 'bold';
            app.ROIPanel.Scrollable = 'on';
            app.ROIPanel.Position = [147 0 535 258];

            % Create UIAxes5_5
            app.UIAxes5_5 = uiaxes(app.ROIPanel);
            app.UIAxes5_5.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes5_5.Color = [0 0 0];
            app.UIAxes5_5.Position = [91 35 300 185];

            % Create HistogramofROIPanel
            app.HistogramofROIPanel = uipanel(app.NoiseTab);
            app.HistogramofROIPanel.ForegroundColor = [1 1 1];
            app.HistogramofROIPanel.BorderType = 'none';
            app.HistogramofROIPanel.TitlePosition = 'centertop';
            app.HistogramofROIPanel.Title = 'Histogram of ROI';
            app.HistogramofROIPanel.BackgroundColor = [0 0 0];
            app.HistogramofROIPanel.FontWeight = 'bold';
            app.HistogramofROIPanel.Scrollable = 'on';
            app.HistogramofROIPanel.Position = [681 1 533 257];

            % Create UIAxes6_3
            app.UIAxes6_3 = uiaxes(app.HistogramofROIPanel);
            app.UIAxes6_3.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes6_3.XColor = [1 1 1];
            app.UIAxes6_3.YColor = [1 1 1];
            app.UIAxes6_3.GridColor = [0.15 0.15 0.15];
            app.UIAxes6_3.Position = [8 11 526 219];

            % Create BackProjectionTab
            app.BackProjectionTab = uitab(app.TabGroup);
            app.BackProjectionTab.Title = 'Back Projection';
            app.BackProjectionTab.BackgroundColor = [0 0 0];

            % Create OriginalImagePanel_6
            app.OriginalImagePanel_6 = uipanel(app.BackProjectionTab);
            app.OriginalImagePanel_6.ForegroundColor = [1 1 1];
            app.OriginalImagePanel_6.BorderType = 'none';
            app.OriginalImagePanel_6.TitlePosition = 'centertop';
            app.OriginalImagePanel_6.Title = 'Original Image';
            app.OriginalImagePanel_6.BackgroundColor = [0 0 0];
            app.OriginalImagePanel_6.FontWeight = 'bold';
            app.OriginalImagePanel_6.Scrollable = 'on';
            app.OriginalImagePanel_6.FontSize = 14;
            app.OriginalImagePanel_6.Position = [146 0 365 509];

            % Create UIAxes3_12
            app.UIAxes3_12 = uiaxes(app.OriginalImagePanel_6);
            app.UIAxes3_12.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_12.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_12.Color = [0 0 0];
            app.UIAxes3_12.Position = [1 3 306 399];

            % Create sinogramPanel
            app.sinogramPanel = uipanel(app.BackProjectionTab);
            app.sinogramPanel.ForegroundColor = [1 1 1];
            app.sinogramPanel.BorderType = 'none';
            app.sinogramPanel.TitlePosition = 'centertop';
            app.sinogramPanel.Title = 'sinogram';
            app.sinogramPanel.BackgroundColor = [0 0 0];
            app.sinogramPanel.FontWeight = 'bold';
            app.sinogramPanel.Scrollable = 'on';
            app.sinogramPanel.FontSize = 14;
            app.sinogramPanel.Position = [510 0 353 509];

            % Create UIAxes3_13
            app.UIAxes3_13 = uiaxes(app.sinogramPanel);
            app.UIAxes3_13.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_13.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_13.Color = [0 0 0];
            app.UIAxes3_13.Position = [1 3 306 399];

            % Create LaminogramPanel
            app.LaminogramPanel = uipanel(app.BackProjectionTab);
            app.LaminogramPanel.ForegroundColor = [1 1 1];
            app.LaminogramPanel.BorderType = 'none';
            app.LaminogramPanel.TitlePosition = 'centertop';
            app.LaminogramPanel.Title = 'Laminogram';
            app.LaminogramPanel.BackgroundColor = [0 0 0];
            app.LaminogramPanel.FontWeight = 'bold';
            app.LaminogramPanel.Scrollable = 'on';
            app.LaminogramPanel.FontSize = 14;
            app.LaminogramPanel.Position = [862 0 352 509];

            % Create UIAxes3_14
            app.UIAxes3_14 = uiaxes(app.LaminogramPanel);
            app.UIAxes3_14.PlotBoxAspectRatio = [1.25279642058166 1 1];
            app.UIAxes3_14.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes3_14.Color = [0 0 0];
            app.UIAxes3_14.Position = [1 3 306 399];

            % Create Panel_14
            app.Panel_14 = uipanel(app.BackProjectionTab);
            app.Panel_14.BorderType = 'none';
            app.Panel_14.BackgroundColor = [0 0.451 0.7412];
            app.Panel_14.Position = [1 0 145 510];

            % Create getlaminogramButton
            app.getlaminogramButton = uibutton(app.Panel_14, 'push');
            app.getlaminogramButton.ButtonPushedFcn = createCallbackFcn(app, @getlaminogramButtonPushed, true);
            app.getlaminogramButton.BackgroundColor = [1 1 1];
            app.getlaminogramButton.FontWeight = 'bold';
            app.getlaminogramButton.FontColor = [0 0.4471 0.7412];
            app.getlaminogramButton.Position = [18 16 105 46];
            app.getlaminogramButton.Text = 'get laminogram';

            % Create FilterTypeButtonGroup_2
            app.FilterTypeButtonGroup_2 = uibuttongroup(app.Panel_14);
            app.FilterTypeButtonGroup_2.SelectionChangedFcn = createCallbackFcn(app, @FilterTypeButtonGroup_2SelectionChanged, true);
            app.FilterTypeButtonGroup_2.ForegroundColor = [1 1 1];
            app.FilterTypeButtonGroup_2.BorderType = 'none';
            app.FilterTypeButtonGroup_2.TitlePosition = 'centertop';
            app.FilterTypeButtonGroup_2.Title = 'Filter Type';
            app.FilterTypeButtonGroup_2.BackgroundColor = [0 0.4471 0.7412];
            app.FilterTypeButtonGroup_2.FontWeight = 'bold';
            app.FilterTypeButtonGroup_2.Position = [8 144 123 129];

            % Create NoneButton
            app.NoneButton = uitogglebutton(app.FilterTypeButtonGroup_2);
            app.NoneButton.Text = 'None';
            app.NoneButton.BackgroundColor = [0.8 0.8 0.8];
            app.NoneButton.FontColor = [1 1 1];
            app.NoneButton.Position = [11 72 100 22];
            app.NoneButton.Value = true;

            % Create RamLakButton
            app.RamLakButton = uitogglebutton(app.FilterTypeButtonGroup_2);
            app.RamLakButton.Text = 'Ram-Lak';
            app.RamLakButton.BackgroundColor = [0.651 0.651 0.651];
            app.RamLakButton.FontColor = [1 1 1];
            app.RamLakButton.Position = [11 40 100 22];

            % Create HammingButton
            app.HammingButton = uitogglebutton(app.FilterTypeButtonGroup_2);
            app.HammingButton.Text = ' Hamming';
            app.HammingButton.BackgroundColor = [0.651 0.651 0.651];
            app.HammingButton.FontColor = [1 1 1];
            app.HammingButton.Position = [11 8 100 22];

            % Create CreatephantomButton
            app.CreatephantomButton = uibutton(app.Panel_14, 'push');
            app.CreatephantomButton.ButtonPushedFcn = createCallbackFcn(app, @CreatephantomButtonPushed, true);
            app.CreatephantomButton.BackgroundColor = [1 1 1];
            app.CreatephantomButton.FontWeight = 'bold';
            app.CreatephantomButton.FontColor = [0 0.4471 0.7412];
            app.CreatephantomButton.Position = [20 421 107 46];
            app.CreatephantomButton.Text = 'Create phantom';

            % Create MaxAngleEditFieldLabel
            app.MaxAngleEditFieldLabel = uilabel(app.Panel_14);
            app.MaxAngleEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.MaxAngleEditFieldLabel.VerticalAlignment = 'top';
            app.MaxAngleEditFieldLabel.FontColor = [1 1 1];
            app.MaxAngleEditFieldLabel.Position = [8 364 65 22];
            app.MaxAngleEditFieldLabel.Text = 'Max. Angle';

            % Create MaxAngleEditField
            app.MaxAngleEditField = uieditfield(app.Panel_14, 'numeric');
            app.MaxAngleEditField.Limits = [0.01 360];
            app.MaxAngleEditField.ValueChangedFcn = createCallbackFcn(app, @MaxAngleEditFieldValueChanged, true);
            app.MaxAngleEditField.HorizontalAlignment = 'left';
            app.MaxAngleEditField.FontColor = [1 1 1];
            app.MaxAngleEditField.BackgroundColor = [0 0.451 0.7412];
            app.MaxAngleEditField.Position = [79 367 56 22];
            app.MaxAngleEditField.Value = 1;

            % Create stepsizeEditFieldLabel
            app.stepsizeEditFieldLabel = uilabel(app.Panel_14);
            app.stepsizeEditFieldLabel.BackgroundColor = [0 0.451 0.7412];
            app.stepsizeEditFieldLabel.VerticalAlignment = 'top';
            app.stepsizeEditFieldLabel.FontColor = [1 1 1];
            app.stepsizeEditFieldLabel.Position = [9 324 56 22];
            app.stepsizeEditFieldLabel.Text = 'step size';

            % Create stepsizeEditField
            app.stepsizeEditField = uieditfield(app.Panel_14, 'numeric');
            app.stepsizeEditField.Limits = [0.01 Inf];
            app.stepsizeEditField.ValueChangedFcn = createCallbackFcn(app, @stepsizeEditFieldValueChanged, true);
            app.stepsizeEditField.HorizontalAlignment = 'left';
            app.stepsizeEditField.FontColor = [1 1 1];
            app.stepsizeEditField.BackgroundColor = [0 0.451 0.7412];
            app.stepsizeEditField.Position = [80 327 56 22];
            app.stepsizeEditField.Value = 1;

            % Create getsinogramButton
            app.getsinogramButton = uibutton(app.Panel_14, 'push');
            app.getsinogramButton.ButtonPushedFcn = createCallbackFcn(app, @getsinogramButtonPushed, true);
            app.getsinogramButton.BackgroundColor = [1 1 1];
            app.getsinogramButton.FontWeight = 'bold';
            app.getsinogramButton.FontColor = [0 0.4471 0.7412];
            app.getsinogramButton.Position = [20 76 100 46];
            app.getsinogramButton.Text = 'get sinogram';

            % Create defualtCheckBox
            app.defualtCheckBox = uicheckbox(app.Panel_14);
            app.defualtCheckBox.ValueChangedFcn = createCallbackFcn(app, @defualtCheckBoxValueChanged, true);
            app.defualtCheckBox.Text = 'defualt';
            app.defualtCheckBox.FontWeight = 'bold';
            app.defualtCheckBox.FontColor = [1 1 1];
            app.defualtCheckBox.Position = [36 295 61 22];

            % Create ColorMapTab
            app.ColorMapTab = uitab(app.TabGroup);
            app.ColorMapTab.Title = 'Color Map';

            % Create Panel_15
            app.Panel_15 = uipanel(app.ColorMapTab);
            app.Panel_15.BorderType = 'none';
            app.Panel_15.BackgroundColor = [0 0.451 0.7412];
            app.Panel_15.Position = [1 0 145 510];

            % Create ChooseROIButton_2
            app.ChooseROIButton_2 = uibutton(app.Panel_15, 'push');
            app.ChooseROIButton_2.ButtonPushedFcn = createCallbackFcn(app, @ChooseROIButton_2Pushed, true);
            app.ChooseROIButton_2.BackgroundColor = [1 1 1];
            app.ChooseROIButton_2.FontWeight = 'bold';
            app.ChooseROIButton_2.FontColor = [0 0.4471 0.7412];
            app.ChooseROIButton_2.Position = [16 278 100 36];
            app.ChooseROIButton_2.Text = 'Choose ROI';

            % Create BrowseButton_2
            app.BrowseButton_2 = uibutton(app.Panel_15, 'push');
            app.BrowseButton_2.ButtonPushedFcn = createCallbackFcn(app, @BrowseButton_2Pushed, true);
            app.BrowseButton_2.BackgroundColor = [1 1 1];
            app.BrowseButton_2.FontWeight = 'bold';
            app.BrowseButton_2.FontColor = [0 0.4471 0.7412];
            app.BrowseButton_2.Position = [11 397 114 33];
            app.BrowseButton_2.Text = 'Browse';

            % Create Panel_16
            app.Panel_16 = uipanel(app.ColorMapTab);
            app.Panel_16.BorderType = 'none';
            app.Panel_16.BackgroundColor = [0 0 0];
            app.Panel_16.Scrollable = 'on';
            app.Panel_16.Position = [135 0 1079 510];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.Panel_16);
            app.UIAxes_2.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2824 0.3216 0.9569;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.UIAxes_2.Color = [0 0 0];
            app.UIAxes_2.Position = [238 61 398 349];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = Image_Processing

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end