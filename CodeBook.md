# Code Book

The features of the input data set are documented in the features_info.txt file.
At the end of processing the data, the results are in a data frame called tidyAverages in the R script, and also written out into the "output.txt" file.
The variables are the following:

```
Variable                                            Type            Min value   Max value   Description

Activity                                            Text: set of labels                     Activity performed, one of the following:
                                                                                             WALKING
                                                                                             WALKING_UPSTAIRS
                                                                                             WALKING_DOWNSTAIRS
                                                                                             SITTING
                                                                                             STANDING
                                                                                             LAYING
SubjectCode                                         Integer                    1          30Subject identifier
tBodyAcceleration_mean()_X                          Double           0.221598244  0.30146102Described in features_info.txt
tBodyAcceleration_mean()_Y                          Double          -0.040513953-0.001308288Described in features_info.txt
tBodyAcceleration_mean()_Z                          Double            -0.1525139-0.075378469Described in features_info.txt
tBodyAcceleration_std()_X                           Double          -0.996068635 0.626917071Described in features_info.txt
tBodyAcceleration_std()_Y                           Double          -0.990240947 0.616937015Described in features_info.txt
tBodyAcceleration_std()_Z                           Double          -0.987658662 0.609017879Described in features_info.txt
tGravityAcceleration_mean()_X                       Double          -0.680043155 0.974508732Described in features_info.txt
tGravityAcceleration_mean()_Y                       Double          -0.479894843 0.956593814Described in features_info.txt
tGravityAcceleration_mean()_Z                       Double           -0.49508872 0.957873042Described in features_info.txt
tGravityAcceleration_std()_X                        Double          -0.996764227-0.829554948Described in features_info.txt
tGravityAcceleration_std()_Y                        Double          -0.994247649-0.643578361Described in features_info.txt
tGravityAcceleration_std()_Z                        Double           -0.99095725-0.610161166Described in features_info.txt
tBodyAccelerationJerk_mean()_X                      Double           0.042688099 0.130193044Described in features_info.txt
tBodyAccelerationJerk_mean()_Y                      Double          -0.038687211 0.056818586Described in features_info.txt
tBodyAccelerationJerk_mean()_Z                      Double          -0.067458392 0.038053359Described in features_info.txt
tBodyAccelerationJerk_std()_X                       Double          -0.994604542 0.544273037Described in features_info.txt
tBodyAccelerationJerk_std()_Y                       Double          -0.989513566 0.355306717Described in features_info.txt
tBodyAccelerationJerk_std()_Z                       Double          -0.993288313 0.031015708Described in features_info.txt
tBodyGyro_mean()_X                                  Double          -0.205775427 0.192704476Described in features_info.txt
tBodyGyro_mean()_Y                                  Double          -0.204205356 0.027470756Described in features_info.txt
tBodyGyro_mean()_Z                                  Double          -0.072454603 0.179102058Described in features_info.txt
tBodyGyro_std()_X                                   Double          -0.994276591 0.267657219Described in features_info.txt
tBodyGyro_std()_Y                                   Double          -0.994210472 0.476518714Described in features_info.txt
tBodyGyro_std()_Z                                   Double          -0.985538363 0.564875818Described in features_info.txt
tBodyGyroJerk_mean()_X                              Double          -0.157212539-0.022091627Described in features_info.txt
tBodyGyroJerk_mean()_Y                              Double          -0.076808992-0.013202277Described in features_info.txt
tBodyGyroJerk_mean()_Z                              Double          -0.092499853-0.006940664Described in features_info.txt
tBodyGyroJerk_std()_X                               Double          -0.996542541  0.17914865Described in features_info.txt
tBodyGyroJerk_std()_Y                               Double          -0.997081576 0.295945926Described in features_info.txt
tBodyGyroJerk_std()_Z                               Double          -0.995380795 0.193206499Described in features_info.txt
tBodyAccelerationMagnitude_mean()                   Double          -0.986493197 0.644604325Described in features_info.txt
tBodyAccelerationMagnitude_std()                    Double          -0.986464543 0.428405923Described in features_info.txt
tGravityAccelerationMagnitude_mean()                Double          -0.986493197 0.644604325Described in features_info.txt
tGravityAccelerationMagnitude_std()                 Double          -0.986464543 0.428405923Described in features_info.txt
tBodyAccelerationJerkMagnitude_mean()               Double          -0.992814715 0.434490401Described in features_info.txt
tBodyAccelerationJerkMagnitude_std()                Double          -0.994646917 0.450612066Described in features_info.txt
tBodyGyroMagnitude_mean()                           Double          -0.980740847 0.418004609Described in features_info.txt
tBodyGyroMagnitude_std()                            Double          -0.981372676  0.29997598Described in features_info.txt
tBodyGyroJerkMagnitude_mean()                       Double          -0.997322527 0.087581662Described in features_info.txt
tBodyGyroJerkMagnitude_std()                        Double          -0.997666072 0.250173204Described in features_info.txt
fBodyAcceleration_mean()_X                          Double          -0.995249933 0.537012022Described in features_info.txt
fBodyAcceleration_mean()_Y                          Double          -0.989034304 0.524187687Described in features_info.txt
fBodyAcceleration_mean()_Z                          Double          -0.989473927 0.280735952Described in features_info.txt
fBodyAcceleration_std()_X                           Double           -0.99660457 0.658506543Described in features_info.txt
fBodyAcceleration_std()_Y                           Double          -0.990680395 0.560191344Described in features_info.txt
fBodyAcceleration_std()_Z                           Double          -0.987224804 0.687124164Described in features_info.txt
fBodyAcceleration_meanFrequency()_X                 Double          -0.635913046 0.159123629Described in features_info.txt
fBodyAcceleration_meanFrequency()_Y                 Double          -0.379518455 0.466528232Described in features_info.txt
fBodyAcceleration_meanFrequency()_Z                 Double          -0.520114794 0.402532553Described in features_info.txt
fBodyAccelerationJerk_mean()_X                      Double          -0.994630797 0.474317256Described in features_info.txt
fBodyAccelerationJerk_mean()_Y                      Double          -0.989398824 0.276716853Described in features_info.txt
fBodyAccelerationJerk_mean()_Z                      Double          -0.992018448 0.157775692Described in features_info.txt
fBodyAccelerationJerk_std()_X                       Double          -0.995073759 0.476803887Described in features_info.txt
fBodyAccelerationJerk_std()_Y                       Double          -0.990468083 0.349771285Described in features_info.txt
fBodyAccelerationJerk_std()_Z                       Double           -0.99310776-0.006236475Described in features_info.txt
fBodyAccelerationJerk_meanFrequency()_X             Double          -0.576044002 0.331449281Described in features_info.txt
fBodyAccelerationJerk_meanFrequency()_Y             Double          -0.601971415 0.195677336Described in features_info.txt
fBodyAccelerationJerk_meanFrequency()_Z             Double          -0.627555474 0.230107946Described in features_info.txt
fBodyGyro_mean()_X                                  Double          -0.993122609 0.474962448Described in features_info.txt
fBodyGyro_mean()_Y                                  Double          -0.994025488  0.32881701Described in features_info.txt
fBodyGyro_mean()_Z                                  Double          -0.985957788  0.49241438Described in features_info.txt
fBodyGyro_std()_X                                   Double          -0.994652185 0.196613287Described in features_info.txt
fBodyGyro_std()_Y                                   Double          -0.994353087 0.646233637Described in features_info.txt
fBodyGyro_std()_Z                                   Double          -0.986725275 0.522454216Described in features_info.txt
fBodyGyro_meanFrequency()_X                         Double          -0.395770151 0.249209412Described in features_info.txt
fBodyGyro_meanFrequency()_Y                         Double          -0.666814815 0.273141323Described in features_info.txt
fBodyGyro_meanFrequency()_Z                         Double          -0.507490867 0.377074097Described in features_info.txt
fBodyAccelerationMagnitude_mean()                   Double          -0.986800645 0.586637551Described in features_info.txt
fBodyAccelerationMagnitude_std()                    Double          -0.987648484 0.178684581Described in features_info.txt
fBodyAccelerationMagnitude_meanFrequency()          Double           -0.31233803 0.435846932Described in features_info.txt
fBodyBodyAccelerationJerkMagnitude_mean()           Double          -0.993998276 0.538404846Described in features_info.txt
fBodyBodyAccelerationJerkMagnitude_std()            Double          -0.994366668 0.316346415Described in features_info.txt
fBodyBodyAccelerationJerkMagnitude_meanFrequency()  Double          -0.125210389   0.4880885Described in features_info.txt
fBodyBodyGyroMagnitude_mean()                       Double          -0.986535242 0.203979765Described in features_info.txt
fBodyBodyGyroMagnitude_std()                        Double          -0.981468842 0.236659662Described in features_info.txt
fBodyBodyGyroMagnitude_meanFrequency()              Double          -0.456638671 0.409521612Described in features_info.txt
fBodyBodyGyroJerkMagnitude_mean()                   Double          -0.997617389 0.146618569Described in features_info.txt
fBodyBodyGyroJerkMagnitude_std()                    Double          -0.997585231 0.287834616Described in features_info.txt
fBodyBodyGyroJerkMagnitude_meanFrequency()          Double          -0.182923597  0.42630168Described in features_info.txt
angle(tBodyAccelerationMean,gravity)                Double          -0.163042575 0.129153964Described in features_info.txt
angle(tBodyAccelerationJerkMean),gravityMean)       Double          -0.120553976 0.203259966Described in features_info.txt
angle(tBodyGyroMean,gravityMean)                    Double           -0.38930512 0.444101172Described in features_info.txt
angle(tBodyGyroJerkMean,gravityMean)                Double          -0.223672056 0.182384803Described in features_info.txt
angle(X,gravityMean)                                Double          -0.947116528 0.737784355Described in features_info.txt
angle(Y,gravityMean)                                Double          -0.874567702 0.424761227Described in features_info.txt
angle(Z,gravityMean)                                Double          -0.873649367 0.390444369Described in features_info.txt
```

Variable	|	Type	|	Min value	|	Max value	|	Description
--------	|	----	|	---------	|	---------	|	-----------
Activity	|	Text: set of labels	|		|		|	Activity performed, one of the following:
	|		|		|		|	WALKING
	|		|		|		|	WALKING_UPSTAIRS
	|		|		|		|	WALKING_DOWNSTAIRS
	|		|		|		|	SITTING
	|		|		|		|	STANDING
	|		|		|		|	LAYING
SubjectCode	|	Integer	|	1	|	30	|	Subject identifier
tBodyAcceleration_mean()_X	|	Double	|	0.221598244	|	0.30146102	|	Described in features_info.txt
tBodyAcceleration_mean()_Y	|	Double	|	-0.040513953	|	-0.001308288	|	Described in features_info.txt
tBodyAcceleration_mean()_Z	|	Double	|	-0.1525139	|	-0.075378469	|	Described in features_info.txt
tBodyAcceleration_std()_X	|	Double	|	-0.996068635	|	0.626917071	|	Described in features_info.txt
tBodyAcceleration_std()_Y	|	Double	|	-0.990240947	|	0.616937015	|	Described in features_info.txt
tBodyAcceleration_std()_Z	|	Double	|	-0.987658662	|	0.609017879	|	Described in features_info.txt
tGravityAcceleration_mean()_X	|	Double	|	-0.680043155	|	0.974508732	|	Described in features_info.txt
tGravityAcceleration_mean()_Y	|	Double	|	-0.479894843	|	0.956593814	|	Described in features_info.txt
tGravityAcceleration_mean()_Z	|	Double	|	-0.49508872	|	0.957873042	|	Described in features_info.txt
tGravityAcceleration_std()_X	|	Double	|	-0.996764227	|	-0.829554948	|	Described in features_info.txt
tGravityAcceleration_std()_Y	|	Double	|	-0.994247649	|	-0.643578361	|	Described in features_info.txt
tGravityAcceleration_std()_Z	|	Double	|	-0.99095725	|	-0.610161166	|	Described in features_info.txt
tBodyAccelerationJerk_mean()_X	|	Double	|	0.042688099	|	0.130193044	|	Described in features_info.txt
tBodyAccelerationJerk_mean()_Y	|	Double	|	-0.038687211	|	0.056818586	|	Described in features_info.txt
tBodyAccelerationJerk_mean()_Z	|	Double	|	-0.067458392	|	0.038053359	|	Described in features_info.txt
tBodyAccelerationJerk_std()_X	|	Double	|	-0.994604542	|	0.544273037	|	Described in features_info.txt
tBodyAccelerationJerk_std()_Y	|	Double	|	-0.989513566	|	0.355306717	|	Described in features_info.txt
tBodyAccelerationJerk_std()_Z	|	Double	|	-0.993288313	|	0.031015708	|	Described in features_info.txt
tBodyGyro_mean()_X	|	Double	|	-0.205775427	|	0.192704476	|	Described in features_info.txt
tBodyGyro_mean()_Y	|	Double	|	-0.204205356	|	0.027470756	|	Described in features_info.txt
tBodyGyro_mean()_Z	|	Double	|	-0.072454603	|	0.179102058	|	Described in features_info.txt
tBodyGyro_std()_X	|	Double	|	-0.994276591	|	0.267657219	|	Described in features_info.txt
tBodyGyro_std()_Y	|	Double	|	-0.994210472	|	0.476518714	|	Described in features_info.txt
tBodyGyro_std()_Z	|	Double	|	-0.985538363	|	0.564875818	|	Described in features_info.txt
tBodyGyroJerk_mean()_X	|	Double	|	-0.157212539	|	-0.022091627	|	Described in features_info.txt
tBodyGyroJerk_mean()_Y	|	Double	|	-0.076808992	|	-0.013202277	|	Described in features_info.txt
tBodyGyroJerk_mean()_Z	|	Double	|	-0.092499853	|	-0.006940664	|	Described in features_info.txt
tBodyGyroJerk_std()_X	|	Double	|	-0.996542541	|	0.17914865	|	Described in features_info.txt
tBodyGyroJerk_std()_Y	|	Double	|	-0.997081576	|	0.295945926	|	Described in features_info.txt
tBodyGyroJerk_std()_Z	|	Double	|	-0.995380795	|	0.193206499	|	Described in features_info.txt
tBodyAccelerationMagnitude_mean()	|	Double	|	-0.986493197	|	0.644604325	|	Described in features_info.txt
tBodyAccelerationMagnitude_std()	|	Double	|	-0.986464543	|	0.428405923	|	Described in features_info.txt
tGravityAccelerationMagnitude_mean()	|	Double	|	-0.986493197	|	0.644604325	|	Described in features_info.txt
tGravityAccelerationMagnitude_std()	|	Double	|	-0.986464543	|	0.428405923	|	Described in features_info.txt
tBodyAccelerationJerkMagnitude_mean()	|	Double	|	-0.992814715	|	0.434490401	|	Described in features_info.txt
tBodyAccelerationJerkMagnitude_std()	|	Double	|	-0.994646917	|	0.450612066	|	Described in features_info.txt
tBodyGyroMagnitude_mean()	|	Double	|	-0.980740847	|	0.418004609	|	Described in features_info.txt
tBodyGyroMagnitude_std()	|	Double	|	-0.981372676	|	0.29997598	|	Described in features_info.txt
tBodyGyroJerkMagnitude_mean()	|	Double	|	-0.997322527	|	0.087581662	|	Described in features_info.txt
tBodyGyroJerkMagnitude_std()	|	Double	|	-0.997666072	|	0.250173204	|	Described in features_info.txt
fBodyAcceleration_mean()_X	|	Double	|	-0.995249933	|	0.537012022	|	Described in features_info.txt
fBodyAcceleration_mean()_Y	|	Double	|	-0.989034304	|	0.524187687	|	Described in features_info.txt
fBodyAcceleration_mean()_Z	|	Double	|	-0.989473927	|	0.280735952	|	Described in features_info.txt
fBodyAcceleration_std()_X	|	Double	|	-0.99660457	|	0.658506543	|	Described in features_info.txt
fBodyAcceleration_std()_Y	|	Double	|	-0.990680395	|	0.560191344	|	Described in features_info.txt
fBodyAcceleration_std()_Z	|	Double	|	-0.987224804	|	0.687124164	|	Described in features_info.txt
fBodyAcceleration_meanFrequency()_X	|	Double	|	-0.635913046	|	0.159123629	|	Described in features_info.txt
fBodyAcceleration_meanFrequency()_Y	|	Double	|	-0.379518455	|	0.466528232	|	Described in features_info.txt
fBodyAcceleration_meanFrequency()_Z	|	Double	|	-0.520114794	|	0.402532553	|	Described in features_info.txt
fBodyAccelerationJerk_mean()_X	|	Double	|	-0.994630797	|	0.474317256	|	Described in features_info.txt
fBodyAccelerationJerk_mean()_Y	|	Double	|	-0.989398824	|	0.276716853	|	Described in features_info.txt
fBodyAccelerationJerk_mean()_Z	|	Double	|	-0.992018448	|	0.157775692	|	Described in features_info.txt
fBodyAccelerationJerk_std()_X	|	Double	|	-0.995073759	|	0.476803887	|	Described in features_info.txt
fBodyAccelerationJerk_std()_Y	|	Double	|	-0.990468083	|	0.349771285	|	Described in features_info.txt
fBodyAccelerationJerk_std()_Z	|	Double	|	-0.99310776	|	-0.006236475	|	Described in features_info.txt
fBodyAccelerationJerk_meanFrequency()_X	|	Double	|	-0.576044002	|	0.331449281	|	Described in features_info.txt
fBodyAccelerationJerk_meanFrequency()_Y	|	Double	|	-0.601971415	|	0.195677336	|	Described in features_info.txt
fBodyAccelerationJerk_meanFrequency()_Z	|	Double	|	-0.627555474	|	0.230107946	|	Described in features_info.txt
fBodyGyro_mean()_X	|	Double	|	-0.993122609	|	0.474962448	|	Described in features_info.txt
fBodyGyro_mean()_Y	|	Double	|	-0.994025488	|	0.32881701	|	Described in features_info.txt
fBodyGyro_mean()_Z	|	Double	|	-0.985957788	|	0.49241438	|	Described in features_info.txt
fBodyGyro_std()_X	|	Double	|	-0.994652185	|	0.196613287	|	Described in features_info.txt
fBodyGyro_std()_Y	|	Double	|	-0.994353087	|	0.646233637	|	Described in features_info.txt
fBodyGyro_std()_Z	|	Double	|	-0.986725275	|	0.522454216	|	Described in features_info.txt
fBodyGyro_meanFrequency()_X	|	Double	|	-0.395770151	|	0.249209412	|	Described in features_info.txt
fBodyGyro_meanFrequency()_Y	|	Double	|	-0.666814815	|	0.273141323	|	Described in features_info.txt
fBodyGyro_meanFrequency()_Z	|	Double	|	-0.507490867	|	0.377074097	|	Described in features_info.txt
fBodyAccelerationMagnitude_mean()	|	Double	|	-0.986800645	|	0.586637551	|	Described in features_info.txt
fBodyAccelerationMagnitude_std()	|	Double	|	-0.987648484	|	0.178684581	|	Described in features_info.txt
fBodyAccelerationMagnitude_meanFrequency()	|	Double	|	-0.31233803	|	0.435846932	|	Described in features_info.txt
fBodyBodyAccelerationJerkMagnitude_mean()	|	Double	|	-0.993998276	|	0.538404846	|	Described in features_info.txt
fBodyBodyAccelerationJerkMagnitude_std()	|	Double	|	-0.994366668	|	0.316346415	|	Described in features_info.txt
fBodyBodyAccelerationJerkMagnitude_meanFrequency()	|	Double	|	-0.125210389	|	0.4880885	|	Described in features_info.txt
fBodyBodyGyroMagnitude_mean()	|	Double	|	-0.986535242	|	0.203979765	|	Described in features_info.txt
fBodyBodyGyroMagnitude_std()	|	Double	|	-0.981468842	|	0.236659662	|	Described in features_info.txt
fBodyBodyGyroMagnitude_meanFrequency()	|	Double	|	-0.456638671	|	0.409521612	|	Described in features_info.txt
fBodyBodyGyroJerkMagnitude_mean()	|	Double	|	-0.997617389	|	0.146618569	|	Described in features_info.txt
fBodyBodyGyroJerkMagnitude_std()	|	Double	|	-0.997585231	|	0.287834616	|	Described in features_info.txt
fBodyBodyGyroJerkMagnitude_meanFrequency()	|	Double	|	-0.182923597	|	0.42630168	|	Described in features_info.txt
angle(tBodyAccelerationMean,gravity)	|	Double	|	-0.163042575	|	0.129153964	|	Described in features_info.txt
angle(tBodyAccelerationJerkMean),gravityMean)	|	Double	|	-0.120553976	|	0.203259966	|	Described in features_info.txt
angle(tBodyGyroMean,gravityMean)	|	Double	|	-0.38930512	|	0.444101172	|	Described in features_info.txt
angle(tBodyGyroJerkMean,gravityMean)	|	Double	|	-0.223672056	|	0.182384803	|	Described in features_info.txt
angle(X,gravityMean)	|	Double	|	-0.947116528	|	0.737784355	|	Described in features_info.txt
angle(Y,gravityMean)	|	Double	|	-0.874567702	|	0.424761227	|	Described in features_info.txt
angle(Z,gravityMean)	|	Double	|	-0.873649367	|	0.390444369	|	Described in features_info.txt
