{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_debug_utils

module Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDebugUtilsMessengerCallbackDataFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDebugUtilsLabelEXT
import Vulkan.Types.Struct.VkDebugUtilsObjectNameInfoEXT



data {-# CTYPE "vulkan/vulkan.h" "VkDebugUtilsMessengerCallbackDataEXT" #-} VkDebugUtilsMessengerCallbackDataEXT =
       VkDebugUtilsMessengerCallbackDataEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDebugUtilsMessengerCallbackDataFlagsEXT
         , pMessageIdName :: Ptr #{type char}
         , messageIdNumber :: #{type int32_t}
         , pMessage :: Ptr #{type char}
         , queueLabelCount :: #{type uint32_t}
         , pQueueLabels :: Ptr VkDebugUtilsLabelEXT
         , cmdBufLabelCount :: #{type uint32_t}
         , pCmdBufLabels :: Ptr VkDebugUtilsLabelEXT
         , objectCount :: #{type uint32_t}
         , pObjects :: Ptr VkDebugUtilsObjectNameInfoEXT
         }

instance Storable VkDebugUtilsMessengerCallbackDataEXT where
  sizeOf    _ = #{size      VkDebugUtilsMessengerCallbackDataEXT}
  alignment _ = #{alignment VkDebugUtilsMessengerCallbackDataEXT}

  peek ptr = 
    VkDebugUtilsMessengerCallbackDataEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"pMessageIdName" ptr)
       <*> peek (offset @"messageIdNumber" ptr)
       <*> peek (offset @"pMessage" ptr)
       <*> peek (offset @"queueLabelCount" ptr)
       <*> peek (offset @"pQueueLabels" ptr)
       <*> peek (offset @"cmdBufLabelCount" ptr)
       <*> peek (offset @"pCmdBufLabels" ptr)
       <*> peek (offset @"objectCount" ptr)
       <*> peek (offset @"pObjects" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pMessageIdName" ptr val
    pokeField @"messageIdNumber" ptr val
    pokeField @"pMessage" ptr val
    pokeField @"queueLabelCount" ptr val
    pokeField @"pQueueLabels" ptr val
    pokeField @"cmdBufLabelCount" ptr val
    pokeField @"pCmdBufLabels" ptr val
    pokeField @"objectCount" ptr val
    pokeField @"pObjects" ptr val

instance Offset "sType" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, sType}

instance Offset "pNext" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, pNext}

instance Offset "flags" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, flags}

instance Offset "pMessageIdName" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, pMessageIdName}

instance Offset "messageIdNumber" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, messageIdNumber}

instance Offset "pMessage" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, pMessage}

instance Offset "queueLabelCount" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, queueLabelCount}

instance Offset "pQueueLabels" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, pQueueLabels}

instance Offset "cmdBufLabelCount" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, cmdBufLabelCount}

instance Offset "pCmdBufLabels" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, pCmdBufLabels}

instance Offset "objectCount" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, objectCount}

instance Offset "pObjects" VkDebugUtilsMessengerCallbackDataEXT where
  rawOffset = #{offset VkDebugUtilsMessengerCallbackDataEXT, pObjects}

#else

module Vulkan.Types.Struct.VkDebugUtilsMessengerCallbackDataEXT where

#endif