/***************************************************************************
 *   Copyright (C) 2014 by Steffen Mauch                                   *
 *   steffen.mauch@gmail.com                                               *
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
#ifndef SWITCH_H
#define SWITCH_H

#include <scopeplotplugin.h>
#include <QCheckBox>
#include <QComboBox>
#include <QVector>
#include <QHBoxLayout>
#include <QPushButton>
#include <QLabel>
#include <QLineEdit>
#include <QTimer>

#include <qwt_plot_curve.h>
#include <qwt_plot.h>
#include <comedilib.h>

#define NB_SAMPLES 1001

/**
@author Steffen Mauch
*/
class generatorPlugin : public scopePlotPlugin
{
Q_OBJECT

public:
	generatorPlugin(QTScope* caller, 
	      QWidget* parent, 
	      const char* name, 
	      int id, 
	      Qt::WindowFlags wflags, 
	      int numberOfSamples);
    ~generatorPlugin();

    void setDataSource(sampl_t**, double **) {}
    void insertValues(int, int) {}
    void replot() {}
    void samplingRateChanged() {}
    void getComedi(comedi_t *comediDevice);

   	virtual QSize sizeHint() const;
   	
private:

    double x[NB_SAMPLES];
    double y[NB_SAMPLES];
 
	QLineEdit *frequency;
	QLineEdit *amplitude;
	QLineEdit *offset;

	QwtPlot *plot;
	QwtPlotCurve *curve;

	QComboBox *dropdown;
	QVector<QCheckBox*> *list;
	QHBoxLayout *hbox_layout;
	QVBoxLayout *vbox_layout;
    QWidget *window2;
    QPushButton *save;

    // comedi specific variables
    comedi_t *comediDevice;
    int comediSubdevice;

    // the comedi command
    comedi_cmd *cmd;
    unsigned int chanlist[16];
    QTimer *timer;
    
private slots:
    void saveCheckBoxes();
    void slotWriteData();

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
