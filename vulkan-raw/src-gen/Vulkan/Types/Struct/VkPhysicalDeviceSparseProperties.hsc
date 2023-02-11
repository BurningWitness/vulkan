{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPhysicalDeviceSparseProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceSparseProperties" #-} VkPhysicalDeviceSparseProperties =
       VkPhysicalDeviceSparseProperties
         { residencyStandard2DBlockShape :: VkBool32 -- ^ Sparse resources support: GPU will access all 2D (single sample) sparse resources using the standard sparse image block shapes (based on pixel format)
         , residencyStandard2DMultisampleBlockShape :: VkBool32 -- ^ Sparse resources support: GPU will access all 2D (multisample) sparse resources using the standard sparse image block shapes (based on pixel format)
         , residencyStandard3DBlockShape :: VkBool32 -- ^ Sparse resources support: GPU will access all 3D sparse resources using the standard sparse image block shapes (based on pixel format)
         , residencyAlignedMipSize :: VkBool32 -- ^ Sparse resources support: Images with mip level dimensions that are NOT a multiple of the sparse image block dimensions will be placed in the mip tail
         , residencyNonResidentStrict :: VkBool32 -- ^ Sparse resources support: GPU can consistently access non-resident regions of a resource, all reads return as if data is 0, writes are discarded
         }

instance Storable VkPhysicalDeviceSparseProperties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceSparseProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceSparseProperties}

  peek ptr = 
    VkPhysicalDeviceSparseProperties
       <$> peek (offset @"residencyStandard2DBlockShape" ptr)
       <*> peek (offset @"residencyStandard2DMultisampleBlockShape" ptr)
       <*> peek (offset @"residencyStandard3DBlockShape" ptr)
       <*> peek (offset @"residencyAlignedMipSize" ptr)
       <*> peek (offset @"residencyNonResidentStrict" ptr)

  poke ptr val = do
    pokeField @"residencyStandard2DBlockShape" ptr val
    pokeField @"residencyStandard2DMultisampleBlockShape" ptr val
    pokeField @"residencyStandard3DBlockShape" ptr val
    pokeField @"residencyAlignedMipSize" ptr val
    pokeField @"residencyNonResidentStrict" ptr val

instance Offset "residencyStandard2DBlockShape" VkPhysicalDeviceSparseProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSparseProperties, residencyStandard2DBlockShape}

instance Offset "residencyStandard2DMultisampleBlockShape" VkPhysicalDeviceSparseProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSparseProperties, residencyStandard2DMultisampleBlockShape}

instance Offset "residencyStandard3DBlockShape" VkPhysicalDeviceSparseProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSparseProperties, residencyStandard3DBlockShape}

instance Offset "residencyAlignedMipSize" VkPhysicalDeviceSparseProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSparseProperties, residencyAlignedMipSize}

instance Offset "residencyNonResidentStrict" VkPhysicalDeviceSparseProperties where
  rawOffset = #{offset struct VkPhysicalDeviceSparseProperties, residencyNonResidentStrict}