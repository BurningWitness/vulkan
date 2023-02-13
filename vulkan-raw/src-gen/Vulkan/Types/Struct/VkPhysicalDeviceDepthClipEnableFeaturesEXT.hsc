{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_depth_clip_enable

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClipEnableFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceDepthClipEnableFeaturesEXT" #-} VkPhysicalDeviceDepthClipEnableFeaturesEXT =
       VkPhysicalDeviceDepthClipEnableFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , depthClipEnable :: VkBool32
         }

instance Storable VkPhysicalDeviceDepthClipEnableFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceDepthClipEnableFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceDepthClipEnableFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceDepthClipEnableFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthClipEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"depthClipEnable" ptr val

instance Offset "sType" VkPhysicalDeviceDepthClipEnableFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDepthClipEnableFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceDepthClipEnableFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDepthClipEnableFeaturesEXT, pNext}

instance Offset "depthClipEnable" VkPhysicalDeviceDepthClipEnableFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceDepthClipEnableFeaturesEXT, depthClipEnable}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceDepthClipEnableFeaturesEXT where

#endif