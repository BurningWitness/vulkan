{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_generated_commands

module Vulkan.Types.Struct.VkIndirectCommandsLayoutCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkIndirectCommandsLayoutUsageFlagsNV
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkIndirectCommandsLayoutTokenNV



data {-# CTYPE "vulkan/vulkan.h" "VkIndirectCommandsLayoutCreateInfoNV" #-} VkIndirectCommandsLayoutCreateInfoNV =
       VkIndirectCommandsLayoutCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkIndirectCommandsLayoutUsageFlagsNV
         , pipelineBindPoint :: VkPipelineBindPoint
         , tokenCount :: #{type uint32_t}
         , pTokens :: Ptr VkIndirectCommandsLayoutTokenNV
         , streamCount :: #{type uint32_t}
         , pStreamStrides :: Ptr #{type uint32_t}
         }

instance Storable VkIndirectCommandsLayoutCreateInfoNV where
  sizeOf    _ = #{size      VkIndirectCommandsLayoutCreateInfoNV}
  alignment _ = #{alignment VkIndirectCommandsLayoutCreateInfoNV}

  peek ptr = 
    VkIndirectCommandsLayoutCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineBindPoint" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"tokenCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTokens" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"streamCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStreamStrides" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pipelineBindPoint" ptr val
    pokeField @"tokenCount" ptr val
    pokeField @"pTokens" ptr val
    pokeField @"streamCount" ptr val
    pokeField @"pStreamStrides" ptr val

instance Offset "sType" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, sType}

instance Offset "pNext" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, pNext}

instance Offset "flags" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, flags}

instance Offset "pipelineBindPoint" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, pipelineBindPoint}

instance Offset "tokenCount" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, tokenCount}

instance Offset "pTokens" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, pTokens}

instance Offset "streamCount" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, streamCount}

instance Offset "pStreamStrides" VkIndirectCommandsLayoutCreateInfoNV where
  rawOffset = #{offset VkIndirectCommandsLayoutCreateInfoNV, pStreamStrides}

#else

module Vulkan.Types.Struct.VkIndirectCommandsLayoutCreateInfoNV where

#endif