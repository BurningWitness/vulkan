{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_texel_buffer_alignment

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT" #-} VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT =
       VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , texelBufferAlignment :: VkBool32
         }

instance Storable VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"texelBufferAlignment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"texelBufferAlignment" ptr val

instance Offset "sType" VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT, pNext}

instance Offset "texelBufferAlignment" VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT, texelBufferAlignment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT where

#endif