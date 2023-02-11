{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFormat where

import Data.Int



-- | Vulkan format definitions
type VkFormat = #{type int}

pattern VK_FORMAT_UNDEFINED :: (Eq a, Num a) => a
pattern VK_FORMAT_UNDEFINED = 0

pattern VK_FORMAT_R4G4_UNORM_PACK8 :: (Eq a, Num a) => a
pattern VK_FORMAT_R4G4_UNORM_PACK8 = 1

pattern VK_FORMAT_R4G4B4A4_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R4G4B4A4_UNORM_PACK16 = 2

pattern VK_FORMAT_B4G4R4A4_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_B4G4R4A4_UNORM_PACK16 = 3

pattern VK_FORMAT_R5G6B5_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R5G6B5_UNORM_PACK16 = 4

pattern VK_FORMAT_B5G6R5_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_B5G6R5_UNORM_PACK16 = 5

pattern VK_FORMAT_R5G5B5A1_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R5G5B5A1_UNORM_PACK16 = 6

pattern VK_FORMAT_B5G5R5A1_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_B5G5R5A1_UNORM_PACK16 = 7

pattern VK_FORMAT_A1R5G5B5_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_A1R5G5B5_UNORM_PACK16 = 8

pattern VK_FORMAT_R8_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_UNORM = 9

pattern VK_FORMAT_R8_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_SNORM = 10

pattern VK_FORMAT_R8_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_USCALED = 11

pattern VK_FORMAT_R8_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_SSCALED = 12

pattern VK_FORMAT_R8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_UINT = 13

pattern VK_FORMAT_R8_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_SINT = 14

pattern VK_FORMAT_R8_SRGB :: (Eq a, Num a) => a
pattern VK_FORMAT_R8_SRGB = 15

pattern VK_FORMAT_R8G8_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_UNORM = 16

pattern VK_FORMAT_R8G8_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_SNORM = 17

pattern VK_FORMAT_R8G8_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_USCALED = 18

pattern VK_FORMAT_R8G8_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_SSCALED = 19

pattern VK_FORMAT_R8G8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_UINT = 20

pattern VK_FORMAT_R8G8_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_SINT = 21

pattern VK_FORMAT_R8G8_SRGB :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8_SRGB = 22

pattern VK_FORMAT_R8G8B8_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_UNORM = 23

pattern VK_FORMAT_R8G8B8_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_SNORM = 24

pattern VK_FORMAT_R8G8B8_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_USCALED = 25

pattern VK_FORMAT_R8G8B8_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_SSCALED = 26

pattern VK_FORMAT_R8G8B8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_UINT = 27

pattern VK_FORMAT_R8G8B8_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_SINT = 28

pattern VK_FORMAT_R8G8B8_SRGB :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8_SRGB = 29

pattern VK_FORMAT_B8G8R8_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_UNORM = 30

pattern VK_FORMAT_B8G8R8_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_SNORM = 31

pattern VK_FORMAT_B8G8R8_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_USCALED = 32

pattern VK_FORMAT_B8G8R8_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_SSCALED = 33

pattern VK_FORMAT_B8G8R8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_UINT = 34

pattern VK_FORMAT_B8G8R8_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_SINT = 35

pattern VK_FORMAT_B8G8R8_SRGB :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8_SRGB = 36

pattern VK_FORMAT_R8G8B8A8_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_UNORM = 37

pattern VK_FORMAT_R8G8B8A8_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_SNORM = 38

pattern VK_FORMAT_R8G8B8A8_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_USCALED = 39

pattern VK_FORMAT_R8G8B8A8_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_SSCALED = 40

pattern VK_FORMAT_R8G8B8A8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_UINT = 41

pattern VK_FORMAT_R8G8B8A8_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_SINT = 42

pattern VK_FORMAT_R8G8B8A8_SRGB :: (Eq a, Num a) => a
pattern VK_FORMAT_R8G8B8A8_SRGB = 43

pattern VK_FORMAT_B8G8R8A8_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_UNORM = 44

pattern VK_FORMAT_B8G8R8A8_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_SNORM = 45

pattern VK_FORMAT_B8G8R8A8_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_USCALED = 46

pattern VK_FORMAT_B8G8R8A8_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_SSCALED = 47

pattern VK_FORMAT_B8G8R8A8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_UINT = 48

pattern VK_FORMAT_B8G8R8A8_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_SINT = 49

pattern VK_FORMAT_B8G8R8A8_SRGB :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8A8_SRGB = 50

pattern VK_FORMAT_A8B8G8R8_UNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_UNORM_PACK32 = 51

pattern VK_FORMAT_A8B8G8R8_SNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_SNORM_PACK32 = 52

pattern VK_FORMAT_A8B8G8R8_USCALED_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_USCALED_PACK32 = 53

pattern VK_FORMAT_A8B8G8R8_SSCALED_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_SSCALED_PACK32 = 54

pattern VK_FORMAT_A8B8G8R8_UINT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_UINT_PACK32 = 55

pattern VK_FORMAT_A8B8G8R8_SINT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_SINT_PACK32 = 56

pattern VK_FORMAT_A8B8G8R8_SRGB_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A8B8G8R8_SRGB_PACK32 = 57

pattern VK_FORMAT_A2R10G10B10_UNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2R10G10B10_UNORM_PACK32 = 58

pattern VK_FORMAT_A2R10G10B10_SNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2R10G10B10_SNORM_PACK32 = 59

pattern VK_FORMAT_A2R10G10B10_USCALED_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2R10G10B10_USCALED_PACK32 = 60

pattern VK_FORMAT_A2R10G10B10_SSCALED_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2R10G10B10_SSCALED_PACK32 = 61

pattern VK_FORMAT_A2R10G10B10_UINT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2R10G10B10_UINT_PACK32 = 62

pattern VK_FORMAT_A2R10G10B10_SINT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2R10G10B10_SINT_PACK32 = 63

pattern VK_FORMAT_A2B10G10R10_UNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2B10G10R10_UNORM_PACK32 = 64

pattern VK_FORMAT_A2B10G10R10_SNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2B10G10R10_SNORM_PACK32 = 65

pattern VK_FORMAT_A2B10G10R10_USCALED_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2B10G10R10_USCALED_PACK32 = 66

pattern VK_FORMAT_A2B10G10R10_SSCALED_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2B10G10R10_SSCALED_PACK32 = 67

pattern VK_FORMAT_A2B10G10R10_UINT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2B10G10R10_UINT_PACK32 = 68

pattern VK_FORMAT_A2B10G10R10_SINT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_A2B10G10R10_SINT_PACK32 = 69

pattern VK_FORMAT_R16_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_UNORM = 70

pattern VK_FORMAT_R16_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_SNORM = 71

pattern VK_FORMAT_R16_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_USCALED = 72

pattern VK_FORMAT_R16_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_SSCALED = 73

pattern VK_FORMAT_R16_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_UINT = 74

pattern VK_FORMAT_R16_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_SINT = 75

pattern VK_FORMAT_R16_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16_SFLOAT = 76

pattern VK_FORMAT_R16G16_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_UNORM = 77

pattern VK_FORMAT_R16G16_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_SNORM = 78

pattern VK_FORMAT_R16G16_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_USCALED = 79

pattern VK_FORMAT_R16G16_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_SSCALED = 80

pattern VK_FORMAT_R16G16_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_UINT = 81

pattern VK_FORMAT_R16G16_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_SINT = 82

pattern VK_FORMAT_R16G16_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_SFLOAT = 83

pattern VK_FORMAT_R16G16B16_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_UNORM = 84

pattern VK_FORMAT_R16G16B16_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_SNORM = 85

pattern VK_FORMAT_R16G16B16_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_USCALED = 86

pattern VK_FORMAT_R16G16B16_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_SSCALED = 87

pattern VK_FORMAT_R16G16B16_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_UINT = 88

pattern VK_FORMAT_R16G16B16_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_SINT = 89

pattern VK_FORMAT_R16G16B16_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16_SFLOAT = 90

pattern VK_FORMAT_R16G16B16A16_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_UNORM = 91

pattern VK_FORMAT_R16G16B16A16_SNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_SNORM = 92

pattern VK_FORMAT_R16G16B16A16_USCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_USCALED = 93

pattern VK_FORMAT_R16G16B16A16_SSCALED :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_SSCALED = 94

pattern VK_FORMAT_R16G16B16A16_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_UINT = 95

pattern VK_FORMAT_R16G16B16A16_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_SINT = 96

pattern VK_FORMAT_R16G16B16A16_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16B16A16_SFLOAT = 97

pattern VK_FORMAT_R32_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32_UINT = 98

pattern VK_FORMAT_R32_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32_SINT = 99

pattern VK_FORMAT_R32_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32_SFLOAT = 100

pattern VK_FORMAT_R32G32_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32_UINT = 101

pattern VK_FORMAT_R32G32_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32_SINT = 102

pattern VK_FORMAT_R32G32_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32_SFLOAT = 103

pattern VK_FORMAT_R32G32B32_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32B32_UINT = 104

pattern VK_FORMAT_R32G32B32_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32B32_SINT = 105

pattern VK_FORMAT_R32G32B32_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32B32_SFLOAT = 106

pattern VK_FORMAT_R32G32B32A32_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32B32A32_UINT = 107

pattern VK_FORMAT_R32G32B32A32_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32B32A32_SINT = 108

pattern VK_FORMAT_R32G32B32A32_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R32G32B32A32_SFLOAT = 109

pattern VK_FORMAT_R64_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64_UINT = 110

pattern VK_FORMAT_R64_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64_SINT = 111

pattern VK_FORMAT_R64_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64_SFLOAT = 112

pattern VK_FORMAT_R64G64_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64_UINT = 113

pattern VK_FORMAT_R64G64_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64_SINT = 114

pattern VK_FORMAT_R64G64_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64_SFLOAT = 115

pattern VK_FORMAT_R64G64B64_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64B64_UINT = 116

pattern VK_FORMAT_R64G64B64_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64B64_SINT = 117

pattern VK_FORMAT_R64G64B64_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64B64_SFLOAT = 118

pattern VK_FORMAT_R64G64B64A64_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64B64A64_UINT = 119

pattern VK_FORMAT_R64G64B64A64_SINT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64B64A64_SINT = 120

pattern VK_FORMAT_R64G64B64A64_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_R64G64B64A64_SFLOAT = 121

pattern VK_FORMAT_B10G11R11_UFLOAT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_B10G11R11_UFLOAT_PACK32 = 122

pattern VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_E5B9G9R9_UFLOAT_PACK32 = 123

pattern VK_FORMAT_D16_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_D16_UNORM = 124

pattern VK_FORMAT_X8_D24_UNORM_PACK32 :: (Eq a, Num a) => a
pattern VK_FORMAT_X8_D24_UNORM_PACK32 = 125

pattern VK_FORMAT_D32_SFLOAT :: (Eq a, Num a) => a
pattern VK_FORMAT_D32_SFLOAT = 126

pattern VK_FORMAT_S8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_S8_UINT = 127

pattern VK_FORMAT_D16_UNORM_S8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_D16_UNORM_S8_UINT = 128

pattern VK_FORMAT_D24_UNORM_S8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_D24_UNORM_S8_UINT = 129

pattern VK_FORMAT_D32_SFLOAT_S8_UINT :: (Eq a, Num a) => a
pattern VK_FORMAT_D32_SFLOAT_S8_UINT = 130

pattern VK_FORMAT_BC1_RGB_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC1_RGB_UNORM_BLOCK = 131

pattern VK_FORMAT_BC1_RGB_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC1_RGB_SRGB_BLOCK = 132

pattern VK_FORMAT_BC1_RGBA_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC1_RGBA_UNORM_BLOCK = 133

pattern VK_FORMAT_BC1_RGBA_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC1_RGBA_SRGB_BLOCK = 134

pattern VK_FORMAT_BC2_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC2_UNORM_BLOCK = 135

pattern VK_FORMAT_BC2_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC2_SRGB_BLOCK = 136

pattern VK_FORMAT_BC3_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC3_UNORM_BLOCK = 137

pattern VK_FORMAT_BC3_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC3_SRGB_BLOCK = 138

pattern VK_FORMAT_BC4_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC4_UNORM_BLOCK = 139

pattern VK_FORMAT_BC4_SNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC4_SNORM_BLOCK = 140

pattern VK_FORMAT_BC5_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC5_UNORM_BLOCK = 141

pattern VK_FORMAT_BC5_SNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC5_SNORM_BLOCK = 142

pattern VK_FORMAT_BC6H_UFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC6H_UFLOAT_BLOCK = 143

pattern VK_FORMAT_BC6H_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC6H_SFLOAT_BLOCK = 144

pattern VK_FORMAT_BC7_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC7_UNORM_BLOCK = 145

pattern VK_FORMAT_BC7_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_BC7_SRGB_BLOCK = 146

pattern VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 147

pattern VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 148

pattern VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 149

pattern VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 150

pattern VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 151

pattern VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 152

pattern VK_FORMAT_EAC_R11_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_EAC_R11_UNORM_BLOCK = 153

pattern VK_FORMAT_EAC_R11_SNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_EAC_R11_SNORM_BLOCK = 154

pattern VK_FORMAT_EAC_R11G11_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_EAC_R11G11_UNORM_BLOCK = 155

pattern VK_FORMAT_EAC_R11G11_SNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_EAC_R11G11_SNORM_BLOCK = 156

pattern VK_FORMAT_ASTC_4x4_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_4x4_UNORM_BLOCK = 157

pattern VK_FORMAT_ASTC_4x4_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_4x4_SRGB_BLOCK = 158

pattern VK_FORMAT_ASTC_5x4_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x4_UNORM_BLOCK = 159

pattern VK_FORMAT_ASTC_5x4_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x4_SRGB_BLOCK = 160

pattern VK_FORMAT_ASTC_5x5_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x5_UNORM_BLOCK = 161

pattern VK_FORMAT_ASTC_5x5_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x5_SRGB_BLOCK = 162

pattern VK_FORMAT_ASTC_6x5_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x5_UNORM_BLOCK = 163

pattern VK_FORMAT_ASTC_6x5_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x5_SRGB_BLOCK = 164

pattern VK_FORMAT_ASTC_6x6_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x6_UNORM_BLOCK = 165

pattern VK_FORMAT_ASTC_6x6_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x6_SRGB_BLOCK = 166

pattern VK_FORMAT_ASTC_8x5_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x5_UNORM_BLOCK = 167

pattern VK_FORMAT_ASTC_8x5_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x5_SRGB_BLOCK = 168

pattern VK_FORMAT_ASTC_8x6_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x6_UNORM_BLOCK = 169

pattern VK_FORMAT_ASTC_8x6_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x6_SRGB_BLOCK = 170

pattern VK_FORMAT_ASTC_8x8_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x8_UNORM_BLOCK = 171

pattern VK_FORMAT_ASTC_8x8_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x8_SRGB_BLOCK = 172

pattern VK_FORMAT_ASTC_10x5_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x5_UNORM_BLOCK = 173

pattern VK_FORMAT_ASTC_10x5_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x5_SRGB_BLOCK = 174

pattern VK_FORMAT_ASTC_10x6_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x6_UNORM_BLOCK = 175

pattern VK_FORMAT_ASTC_10x6_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x6_SRGB_BLOCK = 176

pattern VK_FORMAT_ASTC_10x8_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x8_UNORM_BLOCK = 177

pattern VK_FORMAT_ASTC_10x8_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x8_SRGB_BLOCK = 178

pattern VK_FORMAT_ASTC_10x10_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x10_UNORM_BLOCK = 179

pattern VK_FORMAT_ASTC_10x10_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x10_SRGB_BLOCK = 180

pattern VK_FORMAT_ASTC_12x10_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x10_UNORM_BLOCK = 181

pattern VK_FORMAT_ASTC_12x10_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x10_SRGB_BLOCK = 182

pattern VK_FORMAT_ASTC_12x12_UNORM_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x12_UNORM_BLOCK = 183

pattern VK_FORMAT_ASTC_12x12_SRGB_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x12_SRGB_BLOCK = 184

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G8B8G8R8_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8B8G8R8_422_UNORM = 1000156000
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_B8G8R8G8_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8G8_422_UNORM = 1000156001
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM = 1000156002
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM = 1000156003
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM = 1000156004
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM = 1000156005
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM = 1000156006
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_R10X6_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R10X6_UNORM_PACK16 = 1000156007
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16 = 1000156008
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 = 1000156009
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 = 1000156010
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 = 1000156011
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 = 1000156012
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 = 1000156013
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 = 1000156014
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 = 1000156015
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 = 1000156016
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_R12X4_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R12X4_UNORM_PACK16 = 1000156017
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16 = 1000156018
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 = 1000156019
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 = 1000156020
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 = 1000156021
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 = 1000156022
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 = 1000156023
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 = 1000156024
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 = 1000156025
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 = 1000156026
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G16B16G16R16_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16B16G16R16_422_UNORM = 1000156027
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_B16G16R16G16_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_B16G16R16G16_422_UNORM = 1000156028
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM = 1000156029
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM = 1000156030
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM = 1000156031
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM = 1000156032
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM = 1000156033
#endif

#if VK_VERSION_1_3 || (VK_EXT_ycbcr_2plane_444_formats)
pattern VK_FORMAT_G8_B8R8_2PLANE_444_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8R8_2PLANE_444_UNORM = 1000330000
#endif

#if VK_VERSION_1_3 || (VK_EXT_ycbcr_2plane_444_formats)
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16 = 1000330001
#endif

#if VK_VERSION_1_3 || (VK_EXT_ycbcr_2plane_444_formats)
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16 = 1000330002
#endif

#if VK_VERSION_1_3 || (VK_EXT_ycbcr_2plane_444_formats)
pattern VK_FORMAT_G16_B16R16_2PLANE_444_UNORM :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16R16_2PLANE_444_UNORM = 1000330003
#endif

#if VK_VERSION_1_3 || (VK_EXT_4444_formats)
pattern VK_FORMAT_A4R4G4B4_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_A4R4G4B4_UNORM_PACK16 = 1000340000
#endif

#if VK_VERSION_1_3 || (VK_EXT_4444_formats)
pattern VK_FORMAT_A4B4G4R4_UNORM_PACK16 :: (Eq a, Num a) => a
pattern VK_FORMAT_A4B4G4R4_UNORM_PACK16 = 1000340001
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK = 1000066000
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK = 1000066001
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK = 1000066002
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK = 1000066003
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK = 1000066004
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK = 1000066005
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK = 1000066006
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK = 1000066007
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK = 1000066008
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK = 1000066009
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK = 1000066010
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK = 1000066011
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK = 1000066012
#endif

#if VK_VERSION_1_3 || (VK_EXT_texture_compression_astc_hdr)
pattern VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK = 1000066013
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC1_2BPP_UNORM_BLOCK_IMG = 1000054000
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC1_4BPP_UNORM_BLOCK_IMG = 1000054001
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC2_2BPP_UNORM_BLOCK_IMG = 1000054002
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC2_4BPP_UNORM_BLOCK_IMG = 1000054003
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC1_2BPP_SRGB_BLOCK_IMG = 1000054004
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC1_4BPP_SRGB_BLOCK_IMG = 1000054005
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC2_2BPP_SRGB_BLOCK_IMG = 1000054006
#endif

#if VK_IMG_format_pvrtc
pattern VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_PVRTC2_4BPP_SRGB_BLOCK_IMG = 1000054007
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK
#endif

#if VK_EXT_texture_compression_astc_hdr
pattern VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT = VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G8B8G8R8_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G8B8G8R8_422_UNORM_KHR = VK_FORMAT_G8B8G8R8_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_B8G8R8G8_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_B8G8R8G8_422_UNORM_KHR = VK_FORMAT_B8G8R8G8_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM_KHR = VK_FORMAT_G8_B8_R8_3PLANE_420_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8R8_2PLANE_420_UNORM_KHR = VK_FORMAT_G8_B8R8_2PLANE_420_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM_KHR = VK_FORMAT_G8_B8_R8_3PLANE_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8R8_2PLANE_422_UNORM_KHR = VK_FORMAT_G8_B8R8_2PLANE_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM_KHR = VK_FORMAT_G8_B8_R8_3PLANE_444_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_R10X6_UNORM_PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_R10X6_UNORM_PACK16_KHR = VK_FORMAT_R10X6_UNORM_PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_R10X6G10X6_UNORM_2PACK16_KHR = VK_FORMAT_R10X6G10X6_UNORM_2PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16_KHR = VK_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16_KHR = VK_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16_KHR = VK_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16_KHR = VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16_KHR = VK_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16_KHR = VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16_KHR = VK_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16_KHR = VK_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_R12X4_UNORM_PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_R12X4_UNORM_PACK16_KHR = VK_FORMAT_R12X4_UNORM_PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_R12X4G12X4_UNORM_2PACK16_KHR = VK_FORMAT_R12X4G12X4_UNORM_2PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16_KHR = VK_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16_KHR = VK_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16_KHR = VK_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16_KHR = VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16_KHR = VK_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16_KHR = VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16_KHR = VK_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16_KHR = VK_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G16B16G16R16_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G16B16G16R16_422_UNORM_KHR = VK_FORMAT_G16B16G16R16_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_B16G16R16G16_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_B16G16R16G16_422_UNORM_KHR = VK_FORMAT_B16G16R16G16_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM_KHR = VK_FORMAT_G16_B16_R16_3PLANE_420_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16R16_2PLANE_420_UNORM_KHR = VK_FORMAT_G16_B16R16_2PLANE_420_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM_KHR = VK_FORMAT_G16_B16_R16_3PLANE_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16R16_2PLANE_422_UNORM_KHR = VK_FORMAT_G16_B16R16_2PLANE_422_UNORM
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM_KHR = VK_FORMAT_G16_B16_R16_3PLANE_444_UNORM
#endif

#if VK_EXT_ycbcr_2plane_444_formats
pattern VK_FORMAT_G8_B8R8_2PLANE_444_UNORM_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_G8_B8R8_2PLANE_444_UNORM_EXT = VK_FORMAT_G8_B8R8_2PLANE_444_UNORM
#endif

#if VK_EXT_ycbcr_2plane_444_formats
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT = VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16
#endif

#if VK_EXT_ycbcr_2plane_444_formats
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT = VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16
#endif

#if VK_EXT_ycbcr_2plane_444_formats
pattern VK_FORMAT_G16_B16R16_2PLANE_444_UNORM_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_G16_B16R16_2PLANE_444_UNORM_EXT = VK_FORMAT_G16_B16R16_2PLANE_444_UNORM
#endif

#if VK_EXT_4444_formats
pattern VK_FORMAT_A4R4G4B4_UNORM_PACK16_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_A4R4G4B4_UNORM_PACK16_EXT = VK_FORMAT_A4R4G4B4_UNORM_PACK16
#endif

#if VK_EXT_4444_formats
pattern VK_FORMAT_A4B4G4R4_UNORM_PACK16_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_A4B4G4R4_UNORM_PACK16_EXT = VK_FORMAT_A4B4G4R4_UNORM_PACK16
#endif

#if VK_NV_optical_flow
pattern VK_FORMAT_R16G16_S10_5_NV :: (Eq a, Num a) => a
pattern VK_FORMAT_R16G16_S10_5_NV = 1000464000
#endif