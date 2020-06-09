<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pegawai".
 *
 * @property int $id
 * @property string $nip
 * @property string $nama
 * @property string $gender
 * @property int $id_agama
 * @property int $id_divisi
 * @property int $id_jabatan
 * @property int $id_province
 * @property int $id_city
 *
 * @property Agama $agama
 * @property Divisi $divisi
 * @property Jabatan $jabatan
 * @property Province $province
 * @property City $city
 */
class Pegawai extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pegawai';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nip', 'nama', 'gender', 'id_agama', 'id_divisi', 'id_jabatan', 'id_province', 'id_city'], 'required'],
            [['id_agama', 'id_divisi', 'id_jabatan', 'id_province', 'id_city'], 'integer'],
            [['nip', 'nama'], 'string', 'max' => 20],
            [['gender'], 'string', 'max' => 10],
            [['id_agama'], 'exist', 'skipOnError' => true, 'targetClass' => Agama::className(), 'targetAttribute' => ['id_agama' => 'id']],
            [['id_divisi'], 'exist', 'skipOnError' => true, 'targetClass' => Divisi::className(), 'targetAttribute' => ['id_divisi' => 'id']],
            [['id_jabatan'], 'exist', 'skipOnError' => true, 'targetClass' => Jabatan::className(), 'targetAttribute' => ['id_jabatan' => 'id']],
            [['id_province'], 'exist', 'skipOnError' => true, 'targetClass' => Province::className(), 'targetAttribute' => ['id_province' => 'id']],
            [['id_city'], 'exist', 'skipOnError' => true, 'targetClass' => City::className(), 'targetAttribute' => ['id_city' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nip' => 'Nip',
            'nama' => 'Nama',
            'gender' => 'Gender',
            'id_agama' => 'Id Agama',
            'id_divisi' => 'Id Divisi',
            'id_jabatan' => 'Id Jabatan',
            'id_province' => 'Id Province',
            'id_city' => 'Id City',
        ];
    }

    /**
     * Gets query for [[Agama]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getAgama()
    {
        return $this->hasOne(Agama::className(), ['id' => 'id_agama']);
    }

    /**
     * Gets query for [[Divisi]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDivisi()
    {
        return $this->hasOne(Divisi::className(), ['id' => 'id_divisi']);
    }

    /**
     * Gets query for [[Jabatan]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getJabatan()
    {
        return $this->hasOne(Jabatan::className(), ['id' => 'id_jabatan']);
    }

    /**
     * Gets query for [[Province]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getProvince()
    {
        return $this->hasOne(Province::className(), ['id' => 'id_province']);
    }

    /**
     * Gets query for [[City]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCity()
    {
        return $this->hasOne(City::className(), ['id' => 'id_city']);
    }
}
