{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_multiview_per_view_attributes

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX" #-} VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX =
       VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , perViewPositionAllComponents :: VkBool32
         }

instance Storable VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX where
  sizeOf    _ = #{size      struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX}
  alignment _ = #{alignment struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX}

  peek ptr = 
    VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"perViewPositionAllComponents" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"perViewPositionAllComponents" ptr val

instance Offset "sType" VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX where
  rawOffset = #{offset struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX, sType}

instance Offset "pNext" VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX where
  rawOffset = #{offset struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX, pNext}

instance Offset "perViewPositionAllComponents" VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX where
  rawOffset = #{offset struct VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX, perViewPositionAllComponents}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPerViewAttributesPropertiesNVX where

#endif