{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Struct.VkDebugUtilsMessengerCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDebugUtilsMessageSeverityFlagsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessageTypeFlagsEXT
import Vulkan.Types.Enum.VkDebugUtilsMessengerCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer



data {-# CTYPE "vulkan/vulkan.h" "VkDebugUtilsMessengerCreateInfoEXT" #-} VkDebugUtilsMessengerCreateInfoEXT =
       VkDebugUtilsMessengerCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDebugUtilsMessengerCreateFlagsEXT
         , messageSeverity :: VkDebugUtilsMessageSeverityFlagsEXT
         , messageType :: VkDebugUtilsMessageTypeFlagsEXT
         , pfnUserCallback :: FunPtr PFN_vkDebugUtilsMessengerCallbackEXT
         , pUserData :: Ptr ()
         }

instance Storable VkDebugUtilsMessengerCreateInfoEXT where
  sizeOf    _ = #{size      VkDebugUtilsMessengerCreateInfoEXT}
  alignment _ = #{alignment VkDebugUtilsMessengerCreateInfoEXT}

  peek ptr = 
    VkDebugUtilsMessengerCreateInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"messageSeverity" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"messageType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnUserCallback" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pUserData" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"messageSeverity" ptr val
    pokeField @"messageType" ptr val
    pokeField @"pfnUserCallback" ptr val
    pokeField @"pUserData" ptr val

instance Offset "sType" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, sType}

instance Offset "pNext" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, pNext}

instance Offset "flags" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, flags}

instance Offset "messageSeverity" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, messageSeverity}

instance Offset "messageType" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, messageType}

instance Offset "pfnUserCallback" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, pfnUserCallback}

instance Offset "pUserData" VkDebugUtilsMessengerCreateInfoEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCreateInfoEXT, pUserData}

#else

module Vulkan.Types.Struct.VkDebugUtilsMessengerCreateInfoEXT where

#endif