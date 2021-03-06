/***************************************************************************
 *   Copyright (C) 2004 by Matthias H. Hennig                              *
 *   hennig@cn.stir.ac.uk                                                  *
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

#include "dummy.h"

#include <iostream>
#include <QDebug>

pluginInfo myPluginInfo = {"Dummy Plugin", "Plot", 2, COMEDI_SUBD_AI};

scopePlotPlugin *createPlugin (QTScope* caller, QWidget* parent, const char* name, int id, Qt::WindowFlags wflags,int numberOfSamples) {
	return new dummy(caller, parent, name, id, wflags,numberOfSamples);
}

using std::cout;

dummy::dummy(QTScope* caller, QWidget* parent, const char* name, int id, Qt::WindowFlags wflags, int numberOfSamples)
	: scopePlotPlugin(caller, parent, name, id, wflags, numberOfSamples)
{
	cout << "dummy::dummy: Dummy Plugin generated\n";
	callingWidget = caller;
	idThis = id;
	resize(400,200);
	QPalette Pal(palette());
	// set black background
	//Pal.setColor(QPalette::Background, Qt::black);
	//setAutoFillBackground(true);
	//setPalette(Pal);
	show();
}

QSize dummy::sizeHint() const
{
	return QSize(100, 110);
	cout << "getting called\n";
}

dummy::~dummy()
{
}


