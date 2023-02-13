{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_maintenance1 && VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkTraceRaysIndirectCommand2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkTraceRaysIndirectCommand2KHR" #-} VkTraceRaysIndirectCommand2KHR =
       VkTraceRaysIndirectCommand2KHR
         { raygenShaderRecordAddress :: VkDeviceAddress
         , raygenShaderRecordSize :: VkDeviceSize
         , missShaderBindingTableAddress :: VkDeviceAddress
         , missShaderBindingTableSize :: VkDeviceSize
         , missShaderBindingTableStride :: VkDeviceSize
         , hitShaderBindingTableAddress :: VkDeviceAddress
         , hitShaderBindingTableSize :: VkDeviceSize
         , hitShaderBindingTableStride :: VkDeviceSize
         , callableShaderBindingTableAddress :: VkDeviceAddress
         , callableShaderBindingTableSize :: VkDeviceSize
         , callableShaderBindingTableStride :: VkDeviceSize
         , width :: #{type uint32_t}
         , height :: #{type uint32_t}
         , depth :: #{type uint32_t}
         }

instance Storable VkTraceRaysIndirectCommand2KHR where
  sizeOf    _ = #{size      VkTraceRaysIndirectCommand2KHR}
  alignment _ = #{alignment VkTraceRaysIndirectCommand2KHR}

  peek ptr = 
    VkTraceRaysIndirectCommand2KHR
       <$> peek (Foreign.Storable.Offset.offset @"raygenShaderRecordAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"raygenShaderRecordSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"missShaderBindingTableAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"missShaderBindingTableSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"missShaderBindingTableStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hitShaderBindingTableAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hitShaderBindingTableSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"hitShaderBindingTableStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"callableShaderBindingTableAddress" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"callableShaderBindingTableSize" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"callableShaderBindingTableStride" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"width" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"height" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depth" ptr)

  poke ptr val = do
    pokeField @"raygenShaderRecordAddress" ptr val
    pokeField @"raygenShaderRecordSize" ptr val
    pokeField @"missShaderBindingTableAddress" ptr val
    pokeField @"missShaderBindingTableSize" ptr val
    pokeField @"missShaderBindingTableStride" ptr val
    pokeField @"hitShaderBindingTableAddress" ptr val
    pokeField @"hitShaderBindingTableSize" ptr val
    pokeField @"hitShaderBindingTableStride" ptr val
    pokeField @"callableShaderBindingTableAddress" ptr val
    pokeField @"callableShaderBindingTableSize" ptr val
    pokeField @"callableShaderBindingTableStride" ptr val
    pokeField @"width" ptr val
    pokeField @"height" ptr val
    pokeField @"depth" ptr val

instance Offset "raygenShaderRecordAddress" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, raygenShaderRecordAddress}

instance Offset "raygenShaderRecordSize" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, raygenShaderRecordSize}

instance Offset "missShaderBindingTableAddress" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, missShaderBindingTableAddress}

instance Offset "missShaderBindingTableSize" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, missShaderBindingTableSize}

instance Offset "missShaderBindingTableStride" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, missShaderBindingTableStride}

instance Offset "hitShaderBindingTableAddress" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, hitShaderBindingTableAddress}

instance Offset "hitShaderBindingTableSize" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, hitShaderBindingTableSize}

instance Offset "hitShaderBindingTableStride" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, hitShaderBindingTableStride}

instance Offset "callableShaderBindingTableAddress" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, callableShaderBindingTableAddress}

instance Offset "callableShaderBindingTableSize" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, callableShaderBindingTableSize}

instance Offset "callableShaderBindingTableStride" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, callableShaderBindingTableStride}

instance Offset "width" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, width}

instance Offset "height" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, height}

instance Offset "depth" VkTraceRaysIndirectCommand2KHR where
  rawOffset = #{offset VkTraceRaysIndirectCommand2KHR, depth}

#else

module Vulkan.Types.Struct.VkTraceRaysIndirectCommand2KHR where

#endif