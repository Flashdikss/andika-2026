<?php

namespace App\Filament\Admin\Resources;

use App\Filament\Admin\Resources\PortfolioResource\Pages;
use App\Models\Portfolio;
use Filament\Forms\Form;
use Filament\Forms;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;

class PortfolioResource extends Resource
{
    protected static ?string $model = Portfolio::class;

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $navigationLabel = 'Portfolio';

    protected static ?string $navigationGroup = 'Website';

    public static function canCreate(): bool
    {
        return Portfolio::count() === 0;
    }

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Forms\Components\Section::make('Profile')
                    ->schema([

                        Forms\Components\TextInput::make('name')
                            ->required(),

                        Forms\Components\TextInput::make('title')
                            ->required(),

                        Forms\Components\Textarea::make('about')
                            ->rows(5)
                            ->required(),

                        Forms\Components\FileUpload::make('photo')
                            ->image()
                            ->directory('portfolio'),

                    ])
                    ->columns(2),

                Forms\Components\Section::make('Contact')
                    ->schema([

                        Forms\Components\TextInput::make('email')
                            ->email(),

                        Forms\Components\TextInput::make('github'),

                        Forms\Components\TextInput::make('linkedin'),

                    ])
                    ->columns(3),

                Forms\Components\Section::make('Projects')
                    ->schema([

                        Forms\Components\Repeater::make('projects')
                            ->schema([

                                Forms\Components\TextInput::make('title')
                                    ->required(),

                                Forms\Components\Textarea::make('description')
                                    ->required(),

                            ])
                            ->columnSpanFull()

                    ]),

                Forms\Components\Section::make('Skills')
                    ->schema([

                        Forms\Components\Repeater::make('skills')
                            ->schema([

                                Forms\Components\TextInput::make('name')
                                    ->required(),

                                Forms\Components\Select::make('level')
                                    ->options([
                                        'Beginner' => 'Beginner',
                                        'Intermediate' => 'Intermediate',
                                        'Advanced' => 'Advanced',
                                    ])
                                    ->required(),

                                Forms\Components\TextInput::make('percentage')
                                    ->numeric()
                                    ->minValue(0)
                                    ->maxValue(100)
                                    ->required(),

                            ])
                            ->columnSpanFull()

                    ]),

                Forms\Components\Section::make('Technologies')
                    ->schema([

                        Forms\Components\Repeater::make('technologies')
                            ->schema([

                                Forms\Components\TextInput::make('name')
                                    ->required(),

                            ])
                            ->columnSpanFull()

                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                Tables\Columns\ImageColumn::make('photo'),

                Tables\Columns\TextColumn::make('name')
                    ->searchable(),

                Tables\Columns\TextColumn::make('title')
                    ->searchable(),

                Tables\Columns\TextColumn::make('email'),

                Tables\Columns\TextColumn::make('updated_at')
                    ->since(),

            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([]);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPortfolios::route('/'),
            'create' => Pages\CreatePortfolio::route('/create'),
            'edit' => Pages\EditPortfolio::route('/{record}/edit'),
        ];
    }
}