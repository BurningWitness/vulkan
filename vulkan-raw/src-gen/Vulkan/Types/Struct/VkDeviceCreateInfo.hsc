{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDeviceCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDeviceCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceQueueCreateInfo
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceCreateInfo" #-} VkDeviceCreateInfo =
       VkDeviceCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDeviceCreateFlags
         , queueCreateInfoCount :: #{type uint32_t}
         , pQueueCreateInfos :: Ptr VkDeviceQueueCreateInfo
         , enabledLayerCount :: #{type uint32_t}
         , ppEnabledLayerNames :: Ptr (Ptr #{type char}) -- ^ Ordered list of layer names to be enabled
         , enabledExtensionCount :: #{type uint32_t}
         , ppEnabledExtensionNames :: Ptr (Ptr #{type char})
         , pEnabledFeatures :: Ptr VkPhysicalDeviceFeatures
         }

instance Storable VkDeviceCreateInfo where
  sizeOf    _ = #{size      VkDeviceCreateInfo}
  alignment _ = #{alignment VkDeviceCreateInfo}

  peek ptr = 
    VkDeviceCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"queueCreateInfoCount" ptr)
       <*> peek (offset @"pQueueCreateInfos" ptr)
       <*> peek (offset @"enabledLayerCount" ptr)
       <*> peek (offset @"ppEnabledLayerNames" ptr)
       <*> peek (offset @"enabledExtensionCount" ptr)
       <*> peek (offset @"ppEnabledExtensionNames" ptr)
       <*> peek (offset @"pEnabledFeatures" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"queueCreateInfoCount" ptr val
    pokeField @"pQueueCreateInfos" ptr val
    pokeField @"enabledLayerCount" ptr val
    pokeField @"ppEnabledLayerNames" ptr val
    pokeField @"enabledExtensionCount" ptr val
    pokeField @"ppEnabledExtensionNames" ptr val
    pokeField @"pEnabledFeatures" ptr val

instance Offset "sType" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, sType}

instance Offset "pNext" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, pNext}

instance Offset "flags" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, flags}

instance Offset "queueCreateInfoCount" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, queueCreateInfoCount}

instance Offset "pQueueCreateInfos" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, pQueueCreateInfos}

instance Offset "enabledLayerCount" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, enabledLayerCount}

instance Offset "ppEnabledLayerNames" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, ppEnabledLayerNames}

instance Offset "enabledExtensionCount" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, enabledExtensionCount}

instance Offset "ppEnabledExtensionNames" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, ppEnabledExtensionNames}

instance Offset "pEnabledFeatures" VkDeviceCreateInfo where
  rawOffset = #{offset VkDeviceCreateInfo, pEnabledFeatures}