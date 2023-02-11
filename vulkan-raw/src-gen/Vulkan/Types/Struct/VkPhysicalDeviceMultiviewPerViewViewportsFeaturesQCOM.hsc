{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_multiview_per_view_viewports

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM" #-} VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM =
       VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , multiviewPerViewViewports :: VkBool32
         }

instance Storable VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM}
  alignment _ = #{alignment struct VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM}

  peek ptr = 
    VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"multiviewPerViewViewports" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"multiviewPerViewViewports" ptr val

instance Offset "sType" VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM where
  rawOffset = #{offset struct VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM, sType}

instance Offset "pNext" VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM where
  rawOffset = #{offset struct VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM, pNext}

instance Offset "multiviewPerViewViewports" VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM where
  rawOffset = #{offset struct VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM, multiviewPerViewViewports}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPerViewViewportsFeaturesQCOM where

#endif