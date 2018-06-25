CC = gcc
<<<<<<< HEAD
CFLAGS=-g -Wall -fopenmp
IDIR   = -I/usr/common/software/gsl/2.1/gnu/include  -I ~/dragan_code/recipes/lib  
LDIR   = -L/usr/common/software/gsl/2.1/gnu/lib      -L ~/dragan_code/recipes/lib
=======
<<<<<<< HEAD
CFLAGS=-g -Wall -fopenmp
IDIR   = -I/usr/common/software/gsl/2.1/gnu/include  -I/opt/local/include  
LDIR   = -L/usr/common/software/gsl/2.1/gnu/lib      -L/opt/local/lib
=======
CFLAGS=-g -Wall 
IDIR   = -I/usr/common/software/gsl/2.1/gnu/include  -I/opt/local/include  
LDIR   = -L/usr/common/software/gsl/2.1/gnu/lib      -L/usr/local/lib
>>>>>>> d2b7016c317fc75b52e1d581a4dafc3634817934
>>>>>>> 79983bcbd60d09389115122aacd52c84dab6b1d8

cl:  cl_theory.o functions.o run_camb_get_Tk.o  spline_functions.o get_sn_cov.o
	$(CC) $(CFLAGS) -o  cl cl_theory.o functions.o run_camb_get_Tk.o spline_functions.o get_sn_cov.o $(LDIR) -lgsl -lgslcblas -lrecipes -lm
sig:   signal.o functions.o run_camb_get_Tk.o  spline_functions.o get_sn_cov.o 
	$(CC) $(CFLAGS) -o  sig signal.o functions.o run_camb_get_Tk.o spline_functions.o get_sn_cov.o $(LDIR) -lgsl -lgslcblas -lrecipes -lm
galcov:  galcov_main.o functions.o run_camb_get_Tk.o  spline_functions.o get_gal_cov.o get_sn_cov.o
	$(CC) $(CFLAGS) -o  galcov galcov_main.o functions.o run_camb_get_Tk.o spline_functions.o get_sn_cov.o get_gal_cov.o $(LDIR) -lgsl -lgslcblas -lrecipes -lm
fish:   fisher_est_fs8.o functions.o run_camb_get_Tk.o spline_functions.o get_sn_cov.o 
	$(CC) $(CFLAGS) -o  fish fisher_est_fs8.o functions.o run_camb_get_Tk.o  spline_functions.o  get_sn_cov.o $(LDIR) -lgsl -lgslcblas -lrecipes  -lchealpix -lm
test_NR_2d_spline  :  test_NR_2d_spline.o
	$(CC) $(CFLAGS) -o  test_NR_2d_spline test_NR_2d_spline.o $(LDIR) -lrecipes -lm
find_2D_contour: find_2D_contour.o
	$(CC) $(CFLAGS) -o  find_2D_contour find_2D_contour.o $(LDIR) -lrecipes -lm
.c.o:
	$(CC) -c -o $@ $(CFLAGS) $(IDIR) $<
clean:
	-rm -f *.o 
