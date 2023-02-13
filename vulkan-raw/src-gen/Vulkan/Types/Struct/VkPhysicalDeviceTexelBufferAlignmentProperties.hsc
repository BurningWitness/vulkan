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
  sizeOf    _ = #{size      VkPhysicalDeviceTexelBufferAlignmentProperties}
  alignment _ = #{alignment VkPhysicalDeviceTexelBufferAlignmentProperties}

  peek ptr = 
    VkPhysicalDeviceTexelBufferAlignmentProperties
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageTexelBufferOffsetAlignmentBytes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"storageTexelBufferOffsetSingleTexelAlignment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformTexelBufferOffsetAlignmentBytes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"uniformTexelBufferOffsetSingleTexelAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"storageTexelBufferOffsetAlignmentBytes" ptr val
    pokeField @"storageTexelBufferOffsetSingleTexelAlignment" ptr val
    pokeField @"uniformTexelBufferOffsetAlignmentBytes" ptr val
    pokeField @"uniformTexelBufferOffsetSingleTexelAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentProperties, sType}

instance Offset "pNext" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentProperties, pNext}

instance Offset "storageTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentProperties, storageTexelBufferOffsetAlignmentBytes}

instance Offset "storageTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentProperties, storageTexelBufferOffsetSingleTexelAlignment}

instance Offset "uniformTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentProperties, uniformTexelBufferOffsetAlignmentBytes}

instance Offset "uniformTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceTexelBufferAlignmentProperties where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentProperties, uniformTexelBufferOffsetSingleTexelAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentProperties where

#endif