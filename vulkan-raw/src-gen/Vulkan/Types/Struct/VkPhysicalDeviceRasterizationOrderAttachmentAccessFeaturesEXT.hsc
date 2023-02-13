{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_rasterization_order_attachment_access

module Vulkan.Types.Struct.VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT" #-} VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT =
       VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , rasterizationOrderColorAttachmentAccess :: VkBool32
         , rasterizationOrderDepthAttachmentAccess :: VkBool32
         , rasterizationOrderStencilAttachmentAccess :: VkBool32
         }

instance Storable VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationOrderColorAttachmentAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationOrderDepthAttachmentAccess" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rasterizationOrderStencilAttachmentAccess" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"rasterizationOrderColorAttachmentAccess" ptr val
    pokeField @"rasterizationOrderDepthAttachmentAccess" ptr val
    pokeField @"rasterizationOrderStencilAttachmentAccess" ptr val

instance Offset "sType" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT, pNext}

instance Offset "rasterizationOrderColorAttachmentAccess" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT, rasterizationOrderColorAttachmentAccess}

instance Offset "rasterizationOrderDepthAttachmentAccess" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT, rasterizationOrderDepthAttachmentAccess}

instance Offset "rasterizationOrderStencilAttachmentAccess" VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT, rasterizationOrderStencilAttachmentAccess}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceRasterizationOrderAttachmentAccessFeaturesEXT where

#endif