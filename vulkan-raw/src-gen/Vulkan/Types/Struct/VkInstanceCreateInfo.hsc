{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkInstanceCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkInstanceCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkApplicationInfo



data {-# CTYPE "vulkan/vulkan.h" "VkInstanceCreateInfo" #-} VkInstanceCreateInfo =
       VkInstanceCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkInstanceCreateFlags
         , pApplicationInfo :: Ptr VkApplicationInfo
         , enabledLayerCount :: #{type uint32_t}
         , ppEnabledLayerNames :: Ptr (Ptr #{type char}) -- ^ Ordered list of layer names to be enabled
         , enabledExtensionCount :: #{type uint32_t}
         , ppEnabledExtensionNames :: Ptr (Ptr #{type char}) -- ^ Extension names to be enabled
         }

instance Storable VkInstanceCreateInfo where
  sizeOf    _ = #{size      struct VkInstanceCreateInfo}
  alignment _ = #{alignment struct VkInstanceCreateInfo}

  peek ptr = 
    VkInstanceCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pApplicationInfo" ptr)
       <*> peek (offset @"enabledLayerCount" ptr)
       <*> peek (offset @"ppEnabledLayerNames" ptr)
       <*> peek (offset @"enabledExtensionCount" ptr)
       <*> peek (offset @"ppEnabledExtensionNames" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pApplicationInfo" ptr val
    pokeField @"enabledLayerCount" ptr val
    pokeField @"ppEnabledLayerNames" ptr val
    pokeField @"enabledExtensionCount" ptr val
    pokeField @"ppEnabledExtensionNames" ptr val

instance Offset "sType" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, sType}

instance Offset "pNext" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, pNext}

instance Offset "flags" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, flags}

instance Offset "pApplicationInfo" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, pApplicationInfo}

instance Offset "enabledLayerCount" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, enabledLayerCount}

instance Offset "ppEnabledLayerNames" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, ppEnabledLayerNames}

instance Offset "enabledExtensionCount" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, enabledExtensionCount}

instance Offset "ppEnabledExtensionNames" VkInstanceCreateInfo where
  rawOffset = #{offset struct VkInstanceCreateInfo, ppEnabledExtensionNames}