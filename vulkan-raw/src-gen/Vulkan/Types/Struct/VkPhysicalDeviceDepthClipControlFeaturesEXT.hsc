{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_control

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClipControlFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDepthClipControlFeaturesEXT" #-} VkPhysicalDeviceDepthClipControlFeaturesEXT =
       VkPhysicalDeviceDepthClipControlFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , depthClipControl :: VkBool32
         }

instance Storable VkPhysicalDeviceDepthClipControlFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDepthClipControlFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDepthClipControlFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDepthClipControlFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthClipControl" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"depthClipControl" ptr val

instance Offset "sType" VkPhysicalDeviceDepthClipControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDepthClipControlFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDepthClipControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDepthClipControlFeaturesEXT, pNext}

instance Offset "depthClipControl" VkPhysicalDeviceDepthClipControlFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDepthClipControlFeaturesEXT, depthClipControl}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClipControlFeaturesEXT where

#endif