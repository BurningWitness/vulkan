{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_multiview

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceMultiviewPropertiesKHR" #-} VkPhysicalDeviceMultiviewPropertiesKHR =
       VkPhysicalDeviceMultiviewPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , maxMultiviewViewCount :: #{type uint32_t} -- ^ max number of views in a subpass
         , maxMultiviewInstanceIndex :: #{type uint32_t} -- ^ max instance index for a draw in a multiview subpass
         }

instance Storable VkPhysicalDeviceMultiviewPropertiesKHR where
  sizeOf    _ = #{size      VkPhysicalDeviceMultiviewPropertiesKHR}
  alignment _ = #{alignment VkPhysicalDeviceMultiviewPropertiesKHR}

  peek ptr = 
    VkPhysicalDeviceMultiviewPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"maxMultiviewViewCount" ptr)
       <*> peek (offset @"maxMultiviewInstanceIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"maxMultiviewViewCount" ptr val
    pokeField @"maxMultiviewInstanceIndex" ptr val

instance Offset "sType" VkPhysicalDeviceMultiviewPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewPropertiesKHR, sType}

instance Offset "pNext" VkPhysicalDeviceMultiviewPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewPropertiesKHR, pNext}

instance Offset "maxMultiviewViewCount" VkPhysicalDeviceMultiviewPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewPropertiesKHR, maxMultiviewViewCount}

instance Offset "maxMultiviewInstanceIndex" VkPhysicalDeviceMultiviewPropertiesKHR where
  rawOffset = #{offset VkPhysicalDeviceMultiviewPropertiesKHR, maxMultiviewInstanceIndex}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceMultiviewPropertiesKHR where

#endif