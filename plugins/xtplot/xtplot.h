/***************************************************************************
 *   Copyright (C) 2004 by Matthias H. Hennig                              *
 *   hennig@cn.stir.ac.uk                                                  *
 *   Copyright (C) 2013 by Steffen Mauch                                   *
 *   Steffen Mauch, steffen.mauch@gmail.com                                *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program; if not, write to the                         *
 *   Free Software Foundation, Inc.,                                       *
 *   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
 ***************************************************************************/
#ifndef XTPLOT_H
#define XTPLOT_H

#include <scopeplotplugin.h>
#include <qwt_plot.h>
#include <qwt_plot_curve.h>
#include <QPushButton>

class QwtCounter;
class QCheckBox;
class QTScope;

/**
@author Matthias H. Hennig, Bernd Porr
*/
class xtPlot : public scopePlotPlugin
{
Q_OBJECT
public:
	xtPlot(QTScope* caller, QWidget* parent, const char* name, int id, Qt::WindowFlags wflags,int numberOfSamples);
    ~xtPlot();

    void insertValues(int num,int append);
    void replot();
    void setDataSource(sampl_t**, double **v) {ds = v[0];}
    void getComedi(comedi_t *comediDevice) {};

private:
    // the data plot
    QwtPlot *plotWidget;

    // store curve
    //long curve;
    QwtPlotCurve *curve;

    // pointer to data
    double *ds;
    
    // minimum/maximum values inside plot
    double y_Min;
	double y_Max;

    // plot data is stored here
    double *x;
    double *y;

    // window we see from the measurement
    int plotLength;

    // number of samples at hand
    int nSamples;

    QPushButton* tbIncPushButton;
    QPushButton* tbDecPushButton;
    QPushButton* filePushButton;
    QPushButton* freezePushButton;

    QwtCounter* yminCounter;
    QwtCounter* ymaxCounter;

    QCheckBox* autoscaleCheck;

    void clearData();

public slots:
    void slotSetSamplingRate(double f);


protected:
    void samplingRateChanged();

    void xRangeChanged();

private slots:
    void slotYmaxChanged(double);
    void slotYminChanged(double);
    void slotAutoscaleToggled();

    void incTbEvent();
    void decTbEvent();
    void enterFileName();
};

extern "C" {
	scopePlotPlugin *createPlugin (QTScope* caller, 
				       QWidget* parent, 
				       const char* name, 
				       int id, 
				       Qt::WindowFlags wflags,
				       int numberOfSamples);
}

#endif
