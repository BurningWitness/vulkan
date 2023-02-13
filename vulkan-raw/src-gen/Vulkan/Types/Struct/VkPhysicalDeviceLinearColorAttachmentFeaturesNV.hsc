{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_linear_color_attachment

module Vulkan.Types.Struct.VkPhysicalDeviceLinearColorAttachmentFeaturesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceLinearColorAttachmentFeaturesNV" #-} VkPhysicalDeviceLinearColorAttachmentFeaturesNV =
       VkPhysicalDeviceLinearColorAttachmentFeaturesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , linearColorAttachment :: VkBool32
         }

instance Storable VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  sizeOf    _ = #{size      VkPhysicalDeviceLinearColorAttachmentFeaturesNV}
  alignment _ = #{alignment VkPhysicalDeviceLinearColorAttachmentFeaturesNV}

  peek ptr = 
    VkPhysicalDeviceLinearColorAttachmentFeaturesNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"linearColorAttachment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"linearColorAttachment" ptr val

instance Offset "sType" VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceLinearColorAttachmentFeaturesNV, sType}

instance Offset "pNext" VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceLinearColorAttachmentFeaturesNV, pNext}

instance Offset "linearColorAttachment" VkPhysicalDeviceLinearColorAttachmentFeaturesNV where
  rawOffset = #{offset VkPhysicalDeviceLinearColorAttachmentFeaturesNV, linearColorAttachment}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceLinearColorAttachmentFeaturesNV where

#endif