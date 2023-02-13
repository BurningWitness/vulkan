{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Struct.VkCuLaunchInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCuLaunchInfoNVX" #-} VkCuLaunchInfoNVX =
       VkCuLaunchInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , function :: VkCuFunctionNVX
         , gridDimX :: #{type uint32_t}
         , gridDimY :: #{type uint32_t}
         , gridDimZ :: #{type uint32_t}
         , blockDimX :: #{type uint32_t}
         , blockDimY :: #{type uint32_t}
         , blockDimZ :: #{type uint32_t}
         , sharedMemBytes :: #{type uint32_t}
         , paramCount :: #{type size_t}
         , pParams :: Ptr (Ptr ())
         , extraCount :: #{type size_t}
         , pExtras :: Ptr (Ptr ())
         }

instance Storable VkCuLaunchInfoNVX where
  sizeOf    _ = #{size      VkCuLaunchInfoNVX}
  alignment _ = #{alignment VkCuLaunchInfoNVX}

  peek ptr = 
    VkCuLaunchInfoNVX
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"function" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"gridDimX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"gridDimY" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"gridDimZ" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"blockDimX" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"blockDimY" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"blockDimZ" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"sharedMemBytes" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"paramCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pParams" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extraCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pExtras" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"function" ptr val
    pokeField @"gridDimX" ptr val
    pokeField @"gridDimY" ptr val
    pokeField @"gridDimZ" ptr val
    pokeField @"blockDimX" ptr val
    pokeField @"blockDimY" ptr val
    pokeField @"blockDimZ" ptr val
    pokeField @"sharedMemBytes" ptr val
    pokeField @"paramCount" ptr val
    pokeField @"pParams" ptr val
    pokeField @"extraCount" ptr val
    pokeField @"pExtras" ptr val

instance Offset "sType" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, sType}

instance Offset "pNext" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, pNext}

instance Offset "function" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, function}

instance Offset "gridDimX" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, gridDimX}

instance Offset "gridDimY" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, gridDimY}

instance Offset "gridDimZ" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, gridDimZ}

instance Offset "blockDimX" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, blockDimX}

instance Offset "blockDimY" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, blockDimY}

instance Offset "blockDimZ" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, blockDimZ}

instance Offset "sharedMemBytes" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, sharedMemBytes}

instance Offset "paramCount" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, paramCount}

instance Offset "pParams" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, pParams}

instance Offset "extraCount" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, extraCount}

instance Offset "pExtras" VkCuLaunchInfoNVX where
  rawOffset = #{offset VkCuLaunchInfoNVX, pExtras}

#else

module Vulkan.Types.Struct.VkCuLaunchInfoNVX where

#endif