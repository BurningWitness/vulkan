{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkPipelineCacheHeaderVersionOne where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCacheHeaderVersion



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineCacheHeaderVersionOne" #-} VkPipelineCacheHeaderVersionOne =
       VkPipelineCacheHeaderVersionOne
         { headerSize :: #{type uint32_t}
         , headerVersion :: VkPipelineCacheHeaderVersion
         , vendorID :: #{type uint32_t}
         , deviceID :: #{type uint32_t}
         , pipelineCacheUUID :: #{type uint8_t}
         }

instance Storable VkPipelineCacheHeaderVersionOne where
  sizeOf    _ = #{size      VkPipelineCacheHeaderVersionOne}
  alignment _ = #{alignment VkPipelineCacheHeaderVersionOne}

  peek ptr = 
    VkPipelineCacheHeaderVersionOne
       <$> peek (Foreign.Storable.Offset.offset @"headerSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"headerVersion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"vendorID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"deviceID" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineCacheUUID" ptr)

  poke ptr val = do
    pokeField @"headerSize" ptr val
    pokeField @"headerVersion" ptr val
    pokeField @"vendorID" ptr val
    pokeField @"deviceID" ptr val
    pokeField @"pipelineCacheUUID" ptr val

instance Offset "headerSize" VkPipelineCacheHeaderVersionOne where
  rawOffset = #{offset VkPipelineCacheHeaderVersionOne, headerSize}

instance Offset "headerVersion" VkPipelineCacheHeaderVersionOne where
  rawOffset = #{offset VkPipelineCacheHeaderVersionOne, headerVersion}

instance Offset "vendorID" VkPipelineCacheHeaderVersionOne where
  rawOffset = #{offset VkPipelineCacheHeaderVersionOne, vendorID}

instance Offset "deviceID" VkPipelineCacheHeaderVersionOne where
  rawOffset = #{offset VkPipelineCacheHeaderVersionOne, deviceID}

instance Offset "pipelineCacheUUID" VkPipelineCacheHeaderVersionOne where
  rawOffset = #{offset VkPipelineCacheHeaderVersionOne, pipelineCacheUUID}