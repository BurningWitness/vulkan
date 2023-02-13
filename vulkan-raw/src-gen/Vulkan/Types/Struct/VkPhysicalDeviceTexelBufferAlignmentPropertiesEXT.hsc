{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_texel_buffer_alignment

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT" #-} VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT =
       VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , storageTexelBufferOffsetAlignmentBytes :: VkDeviceSize
         , storageTexelBufferOffsetSingleTexelAlignment :: VkBool32
         , uniformTexelBufferOffsetAlignmentBytes :: VkDeviceSize
         , uniformTexelBufferOffsetSingleTexelAlignment :: VkBool32
         }

instance Storable VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT}
  alignment _ = #{alignment VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT}

  peek ptr = 
    VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
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

instance Offset "sType" VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT, pNext}

instance Offset "storageTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT, storageTexelBufferOffsetAlignmentBytes}

instance Offset "storageTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT, storageTexelBufferOffsetSingleTexelAlignment}

instance Offset "uniformTexelBufferOffsetAlignmentBytes" VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT, uniformTexelBufferOffsetAlignmentBytes}

instance Offset "uniformTexelBufferOffsetSingleTexelAlignment" VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT, uniformTexelBufferOffsetSingleTexelAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT where

#endif