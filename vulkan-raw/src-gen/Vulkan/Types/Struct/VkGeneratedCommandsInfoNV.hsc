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

module Vulkan.Types.Struct.VkGeneratedCommandsInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkIndirectCommandsStreamNV



data {-# CTYPE "vulkan/vulkan.h" "VkGeneratedCommandsInfoNV" #-} VkGeneratedCommandsInfoNV =
       VkGeneratedCommandsInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipelineBindPoint :: VkPipelineBindPoint
         , pipeline :: VkPipeline
         , indirectCommandsLayout :: VkIndirectCommandsLayoutNV
         , streamCount :: #{type uint32_t}
         , pStreams :: Ptr VkIndirectCommandsStreamNV
         , sequencesCount :: #{type uint32_t}
         , preprocessBuffer :: VkBuffer
         , preprocessOffset :: VkDeviceSize
         , preprocessSize :: VkDeviceSize
         , sequencesCountBuffer :: VkBuffer
         , sequencesCountOffset :: VkDeviceSize
         , sequencesIndexBuffer :: VkBuffer
         , sequencesIndexOffset :: VkDeviceSize
         }

instance Storable VkGeneratedCommandsInfoNV where
  sizeOf    _ = #{size      VkGeneratedCommandsInfoNV}
  alignment _ = #{alignment VkGeneratedCommandsInfoNV}

  peek ptr = 
    VkGeneratedCommandsInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineBindPoint" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipeline" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"indirectCommandsLayout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"streamCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStreams" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sequencesCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"preprocessBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"preprocessOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"preprocessSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sequencesCountBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sequencesCountOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sequencesIndexBuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sequencesIndexOffset" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipelineBindPoint" ptr val
    pokeField @"pipeline" ptr val
    pokeField @"indirectCommandsLayout" ptr val
    pokeField @"streamCount" ptr val
    pokeField @"pStreams" ptr val
    pokeField @"sequencesCount" ptr val
    pokeField @"preprocessBuffer" ptr val
    pokeField @"preprocessOffset" ptr val
    pokeField @"preprocessSize" ptr val
    pokeField @"sequencesCountBuffer" ptr val
    pokeField @"sequencesCountOffset" ptr val
    pokeField @"sequencesIndexBuffer" ptr val
    pokeField @"sequencesIndexOffset" ptr val

instance Offset "sType" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, sType}

instance Offset "pNext" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, pNext}

instance Offset "pipelineBindPoint" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, pipelineBindPoint}

instance Offset "pipeline" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, pipeline}

instance Offset "indirectCommandsLayout" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, indirectCommandsLayout}

instance Offset "streamCount" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, streamCount}

instance Offset "pStreams" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, pStreams}

instance Offset "sequencesCount" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, sequencesCount}

instance Offset "preprocessBuffer" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, preprocessBuffer}

instance Offset "preprocessOffset" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, preprocessOffset}

instance Offset "preprocessSize" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, preprocessSize}

instance Offset "sequencesCountBuffer" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, sequencesCountBuffer}

instance Offset "sequencesCountOffset" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, sequencesCountOffset}

instance Offset "sequencesIndexBuffer" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, sequencesIndexBuffer}

instance Offset "sequencesIndexOffset" VkGeneratedCommandsInfoNV where
  rawOffset = #{offset VkGeneratedCommandsInfoNV, sequencesIndexOffset}

#else

module Vulkan.Types.Struct.VkGeneratedCommandsInfoNV where

#endif