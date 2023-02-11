{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTexelBufferAlignmentProperties" #-} VkPhysicalDeviceTexelBufferAlignmentProperties =
       VkPhysicalDeviceTexelBufferAlignmentProperties
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageTexelBufferOffsetAlignmentBytes :: VkDeviceSize
         , storageTexelBufferOffsetSingleTexelAlignment :: VkBool32
         , uniformTexelBufferOffsetAlignmentBytes :: VkDeviceSize
         , uniformTexelBufferOffsetSingleTexelAlignment :: VkBool32
         }

instance Storable VkPhysicalDeviceTexelBufferAlignmentProperties where
  sizeOf    _ = #{size      struct VkPhysicalDeviceTexelBufferAlignmentProperties}
  alignment _ = #{alignment struct VkPhysicalDeviceTexelBufferAlignmentProperties}

  peek ptr = 
    VkPhysicalDeviceTexelBufferAlignmentProperties
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"storageTexelBufferOffsetAlignmentBytes" ptr)
       <*> peek (offset @"storageTexelBufferOffsetSingleTexelAlignment" ptr)
       <*> peek (offset @"uniformTexelBufferOffsetAlignmentBytes" ptr)
       <*> peek (offset @"uniformTexelBufferOffsetSingleTexelAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"storageTexelBufferOffsetAlignmentBytes" ptr val
    pokeField @"storageTexelBufferOffsetSingleTexelAlignment" ptr val
    pokeField @"uniformTexelBufferOffsetAlignmentBytes" ptr val
    pokeField @"uniformTexelBufferOffsetSingleTexelAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTexelBufferAlignmentProperties, sType}

instance Offset "pNext" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTexelBufferAlignmentProperties, pNext}

instance Offset "storageTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTexelBufferAlignmentProperties, storageTexelBufferOffsetAlignmentBytes}

instance Offset "storageTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTexelBufferAlignmentProperties, storageTexelBufferOffsetSingleTexelAlignment}

instance Offset "uniformTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTexelBufferAlignmentProperties, uniformTexelBufferOffsetAlignmentBytes}

instance Offset "uniformTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset struct VkPhysicalDeviceTexelBufferAlignmentProperties, uniformTexelBufferOffsetSingleTexelAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentProperties where

#endif